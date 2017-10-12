package ops.oms;

import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;


public class OMSDEV {
    static Wait<WebDriver> wait;

	public static void createOrg(WebDriver driver) {
		//Create an Organization 1_1324
    	driver.findElement(By.xpath("//li[@id='1_1324']/a")).click();
    	driver.findElement(By.xpath("//li[@id='1_1324']/a")).click();
    	driver.findElement(By.xpath("//li[@id='1_1324']/a")).click();
    	//driver.findElement(By.xpath("//a[@class='orgName' and contains(text(), 'CAT310')]")).click();
    	driver.findElement(By.xpath("//*[@id='categoryProfile']/div[1]/span/button")).click();
    	driver.findElement(By.xpath("//*[@id='orgInfo.name']")).sendKeys("OrgAUTO1");   	
    	driver.findElement(By.xpath("//*[@id='orgTypesList']/option[2]")).click();
    	driver.findElement(By.xpath("//*[@id='orgCreateForm']/div[2]/div/div[1]/button")).click();
	}

	public void loginOMS(String appURL, WebDriver driver) {
		driver.navigate().to(appURL);
    	driver.findElement(By.xpath("//input[@id='pki_username']")).clear();
    	driver.findElement(By.xpath("//input[@id='pki_username']")).sendKeys("C:\\OMS\\PKI\\RonsaidDmmhc.epf");
    	driver.findElement(By.xpath("//input[@id='pki_password']")).sendKeys("Password2016"); 	
    	driver.findElement(By.xpath("//input[@id='submitButton']")).click();
	}
	
	public void selectAddress(WebDriver driver) {
		String parent = driver.getWindowHandle();
    	
    	for(String winHandle : driver.getWindowHandles()){
    	    driver.switchTo().window(winHandle);
    	    driver.findElement(By.xpath("//input[@id='municipalityCity']")).sendKeys("Toronto");
    	}
    	
    	driver.switchTo().window(parent);
        WebDriverWait wait = new WebDriverWait(driver, 10);
        WebElement push_to_create = wait.until(ExpectedConditions.elementToBeClickable(By.cssSelector("input[value='Push To Create']")));
        push_to_create.click();
        try {
			waitForWindow(driver);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        switchToModalDialog(driver, parent);
    	
    	String mainWinHander = driver.getWindowHandle();
    	Set<String> handles = driver.getWindowHandles();

    	for(String handle : handles)
    	{
    	    if(!mainWinHander.equals(handle))
    	    {
    	        WebDriver popup = driver.switchTo().window(handle);
    	        popup.close();
    	        
    	        popup.findElement(By.xpath("//input[@id='municipalityCity']")).sendKeys("Toronto"); 	    	
    	        popup.findElement(By.xpath("//input[@id='streetNamePoRural']")).sendKeys("Bloor");
    	        popup.findElement(By.xpath("//button[@type='submit']")).click();
    	        popup.findElement(By.xpath("//div[@id='contactAddressSearchResult']/div/table/tbody/tr[1]/td[2]")).click(); 
    	        popup.close();
    	    }
    	}	
    	//driver.switchTo().activeElement();
    	//driver.switchTo().defaultContent(); 
    	
    	driver.findElement(By.xpath("//button[@id='btnOrgCreate']")).click();
	}

    
    
    public static void waitForWindow(WebDriver driver)
            throws InterruptedException {
        //wait until number of window handles become 2 or until 6 seconds are completed.
        int timecount = 1;
        do {
            driver.getWindowHandles();
            Thread.sleep(200);
            timecount++;
            if (timecount > 30) {
                break;
            }
        } while (driver.getWindowHandles().size() != 2);

    }

    public static void switchToModalDialog(WebDriver driver, String parent) { 
            //Switch to Modal dialog
        if (driver.getWindowHandles().size() == 2) {
            for (String window : driver.getWindowHandles()) {
                if (!window.equals(parent)) {
                    driver.switchTo().window(window);
                    System.out.println("Modal dialog found");
                    break;
                }
            }
        }
    }


    private static boolean firstPageContainsQAANet(WebDriver driver) {
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
