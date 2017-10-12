package ops.oms;
import ops.oms.OMSTest1;
import ops.oms.OMSDEV;

import org.openqa.selenium.By;
import org.openqa.selenium.Capabilities;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
 
public class OMSDriver {
    static WebDriver driver;
    
    public static void main(String[] args) {
    	
		OMSDEV omsDEV = new OMSDEV();
		OMSTest1 omsTest1 = new OMSTest1();
		String appURL = "", test1URL = "", devURL = "";

		
    	//Set the Webdriver to Internet Explorer
		System.setProperty("webdriver.ie.driver","C:/Tools/Selenium/IEDriverServer.exe");   	

    	WebDriver driver = new InternetExplorerDriver();
    	driver = new InternetExplorerDriver();
    	driver.manage().window().maximize();
    	
    	// Select Testing Environment
		test1URL = "http://on34c02217480.cihs.ad.gov.on.ca:9091/oms/loginPage.jsp";
		devURL = "https://intradev.sus.ebc.gov.on.ca/oms/main";
		appURL = devURL;

		if (appURL.equals(devURL)){
			driver.navigate().to(appURL);
			driver.switchTo().defaultContent(); // you are now outside both frames
			driver.switchTo().frame("entrustTruePassGuiFrame");
	    	driver.findElement(By.xpath("//input[@id='pki_username']")).clear();
	    	//input[@id='pki_username']
	    	driver.findElement(By.xpath("//input[@id='pki_username']")).sendKeys("C:\\OMS\\PKI\\RonsaidDmmhc.epf");
	    	driver.findElement(By.xpath("//input[@id='pki_password']")).sendKeys("Password2016"); 	
	    	driver.findElement(By.xpath("//input[@id='submitButton']")).click();
			//omsDEV.loginOMS(appURL, driver);
			omsDEV.createOrg(driver);
			omsDEV.selectAddress(driver);
		} else {
			omsTest1.loginOMSTest1(appURL, driver);
	    	omsTest1.createOrg(driver);
	    	omsTest1.selectAddress(driver);
		}
    	
    }
}
