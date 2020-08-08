package com.ciss.demo;

import static org.junit.Assert.assertTrue;

import java.util.concurrent.TimeUnit;

import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;


public class MyTest {

	@BeforeClass
	public static void initDriver() {
	System.setProperty("webdriver.chrome.driver", "C:\\soft\\chromedriver.exe");
	}

	
	
	//@Test
		public void testLoginFailed() throws InterruptedException {
		WebDriver driver = new ChromeDriver();

		driver.get("http://localhost:8080/login");

		//below three rule to wait for link
		
//Thread.sleep(3000);

//driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);

//explicit wait
WebDriverWait wait=new WebDriverWait(driver, 20);
wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("/html/body/div[2]/div/div/div[2]/form/div/div[1]/input")));

		driver.findElement(By.id("name")).sendKeys("root1");
		driver.findElement(By.id("password")).sendKeys("root");

		driver.findElement(By.cssSelector("button[type='submit']")).click();

		Thread.sleep(10000);

	//	Select country=new Select(driver.findElement(By.id("ctId")));
		//country.selectByValue("India");
		//ajax call
		
		//state
		
	//	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("/html/body/div[2]/div/div/div[2]/form/div/div[1]/input")));
	
		
		String error=driver.findElement(By.className("alert-warning")).getText();

		assertTrue(error.equals("wrong username or password"));
		
	
		
	
		


		}
	@Test
	public void loginSuccess() throws InterruptedException {
		
		WebDriver driver = new ChromeDriver();

		driver.get("http://localhost:8080/login");

WebDriverWait wait=new WebDriverWait(driver, 20);
wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("/html/body/div[2]/div/div/div[2]/form/div/div[1]/input")));

		driver.findElement(By.id("name")).sendKeys("root");
		driver.findElement(By.id("password")).sendKeys("root");

		driver.findElement(By.cssSelector("button[type='submit']")).click();
		
		Thread.sleep(10000);
		
		driver.findElement(By.xpath("/html/body/div[2]/nav/ul/li[1]/a")).click();
		driver.findElement(By.xpath("/html/body/div[2]/nav/ul/li[1]/ul/li[1]/a")).click();
		
		driver.findElement(By.id("vname")).sendKeys("sukla");
		driver.findElement(By.id("regType")).sendKeys("Partnership");
	

		

		
		
	}
	
}
