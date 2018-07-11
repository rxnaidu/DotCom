*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../PO/Common.robot
Resource  ../../../../PO/LoginPage.robot
Resource  ../../../../PO/Chat.robot
Resource  ../../../../PO/HomePage.robot
Resource  ../../../../PO/HomePageHeader.robot
Resource  ../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click the location module and enter DISH Challenger Market zip code 14609 and Click Check Availability
    Enter zipcode and click Check Availability  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}

Select the Bundle option from the Shop Category Drop down
    Mouse over on Shop Tab
    Select Bundle option

Select the floating Chat ICON and validate Overlay display
    Click Chat
    Validate Residential Radio on Chat
    Validate Business Radio on Chat