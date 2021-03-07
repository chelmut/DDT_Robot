import java.awt.Robot;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import org.openqa.selenium.WebDriver;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


// Settings
// Install robotframework.datadriver from preferences for New Projects - Project Interprector

Library SeleniumLibrary
Resource  ../Resources/common.robot
Library  DataDriver  ../TestData/TestData.xlsx  sheet_name=Sheet1

Suite Setup  common.Start TestCase
Suite Teardown  common.Finish TestCase
Test Template  To Find all the details after clicking on submit

//Test Cases
Verify all the details are displaying correctly ${username}  ${password}  ${Address1}  ${Address2}  ${pincode}

Scenario: Check all the details are displayed correctly
	[Arguments] ${username}  ${password}  ${Address1}  ${Address2}  ${pincode}
	Input Text  ${txtbox_username}  ${username}
	Input Text  ${txtbox_password}  ${password}
	Input Text  ${txtbox_address1}  ${Address1}
	Input Text  ${txtbox_address2}  ${Address2}
	Input Text  ${txtbox_pincode}  ${pincode}
	Click Submit Button ${btn_Submit}
	Sleep 2s
	//Element Should Contain ${txt_msg}  ${success_msg}
