*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/AccountSummary.robot
Resource  ../../../PO/EcomAddPackage.robot
Resource  ../../../Properties/Ecom_PR.robot

*** Variables ***
${TESTCASE_NO}  TC07
${REGION}  FT
${ORD_ID_DATA}  1

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify Video Add Shop option is displayed under Account Summary
    Verify Add Video page elements

Select close on auto payment popup
    Close Auto Pay popup
    Close Upgrade popup

Click Shop button for Video Add
    Click Shop Button

Click Select button for adding Fios TV Preferred HD product
    Add Fios TV Preferred HD Product

Select Sports Pass Channel package
    Click Add on Sports Pass

Click on Continue Button on Channel selection page
    Click Continue on Add Premium Channels page

Select FiOS Quantum TV Premium on DVR selection Page
    Click Select on FiOS Quantum TV Premium DVR option

Click on Continue Button on DVR selection Page
    Click Continue on DVR selection page

Select FiOS Quantum Gateway Router
    Click Select on FiOS Quantum Gateway Router option

Click Checkout button
    click checkout

Enter [Can be Reached] number and click [Update]
    Update Can be reached number

Select available date from calender
    wait until page contains  Contact Information
    wait until page contains  Available Dates
    @{CALENDER_DATES}  get webelements  xpath=//td[@class="t-calendar-month fecomm-font-large-size fecomm-font-bold ng-binding"]/../../../../following-sibling::table[2]//td

    : FOR    ${DATE}  IN  @{CALENDER_DATES}
    \    Log    ${DATE}
    \   ${dt}  get text  ${DATE}
    \   set global variable  ${dt}
    \    Run Keyword If  '${dt}' == '16'  Pick date from calender


Pick date from calender
    click element  ${dt}
    Exit For Loop

#WebElement dateWidget = driver.findElement(your locator);
#List<WebElement> columns=dateWidget.findElements(By.tagName("td"));
#
#for (WebElement cell: columns){
#   //Select 13th Date
#   if (cell.getText().equals("13")){
#      cell.findElement(By.linkText("13")).click();
#      break;
# }




Enter initial and click Complete order
    Entr Initials
    Click Complete order Button  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ORDER_ID}

Clear saved products from cart
    Click Return to My Account
    Click Shop Button
    Click Clear Cart on popup
    wait until element is enabled  ${FIOS_TV_PREFERRED_HD}  3m
    sleep  2s