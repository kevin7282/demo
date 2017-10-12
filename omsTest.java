import java.io.File;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

 
public class omsTest {
    static WebDriver driver;
    static Wait<WebDriver> wait;
    public static void main(String[] args) {
        /*
    	driver = new FirefoxDriver();
    	File file = new File("C:/Tools/Selenium/iexploredriver.exe");
    	System.setProperty("webdriver.ie.driver", file.getAbsolutePath());
    	
    	System.setProperty("webdriver.ie.driver","C:/Tools/Selenium/IEDriverServer.exe"); 
    	WebDriver driver = new InternetExplorerDriver();
    	driver = new InternetExplorerDriver();
    	
    	System.setProperty("webdriver.chrome.driver","C:/Program Files (x86)/Google/Chrome/Application/chrome.exe"); 
    	driver = new ChromeDriver();
    	
    	*/
    	String appURL = "http://on34c02217480.cihs.ad.gov.on.ca:9091/oms/loginPage.jsp";
    	
    	//System.setProperty("webdriver.ie.driver","C:/Tools/Selenium/IEDriverServer.exe"); 
    	System.setProperty("webdriver.ie.driver","C:/Tools/Selenium/IEDriverServer.exe"); 
    	
    	WebDriver driver = new InternetExplorerDriver();
    	driver = new InternetExplorerDriver();
    	driver.manage().window().maximize();
    	driver.navigate().to(appURL);
    	
    	driver.findElement(By.id("uid")).sendKeys("administrator");
    	driver.findElement(By.id("password")).sendKeys("password1");
    	
    	driver.findElement(By.xpath("//input[@type='submit']")).click();
    	
    	//Create an Organization
    	driver.findElement(By.xpath("//*[@id='1_1348']/a")).click();
    	driver.findElement(By.xpath("//*[@id='categoryProfile']/div[1]/span/button")).click();
    	driver.findElement(By.xpath("//*[@id='orgInfo.name']")).sendKeys("OrgAUTO1");
    	
    	driver.findElement(By.xpath("//*[@id='orgTypesList']/option[2]")).click();
    	
    	driver.findElement(By.xpath("//*[@id='orgCreateForm']/div[2]/div/div[1]/button/text()")).click();
    	driver.findElement(By.xpath("//*[@id='streetNamePoRural']")).sendKeys("Bloor");
    	
    	driver.findElement(By.xpath("//*[@id='1_1348']/a")).click();
    	driver.findElement(By.xpath("//*[@id='1_1348']/a")).click();
    	
    //    wait = new WebDriverWait(driver, 3);
/*        boolean result;

        try {
            result = firstPageContainsQAANet();
        } catch(Exception e) {
            //e.printStackTrace();
            result = false;
        } finally {
        //    driver.close();
        }

        System.out.println("Test " + (result? "passed." : "failed."));
        if (!result) {
            System.exit(1);
        }*/
    }

    private static boolean firstPageContainsQAANet() {
        //type search query
        driver.findElement(By.name("q")).sendKeys("qa automation\n");
        driver.findElement(By.name("btnG")).click();
        wait.until(new ExpectedCondition<Boolean>() {
            public Boolean apply(WebDriver webDriver) {
                System.out.println("Searching ...");
                return webDriver.findElement(By.id("resultStats")) != null;
            }
        });
        return driver.findElement(By.tagName("body")).getText().contains("qaautomation.net");
    }
}
