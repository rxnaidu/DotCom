*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../PO/Common.robot
Resource  ../../../../PO/LoginPage.robot
Resource  ../../../../PO/HomePage.robot
Resource  ../../../../PO/HomePageHeader.robot
Resource  ../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC11

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select Frontier Secure from Shop Drop down
    Mouse over on Shop Tab
    Select Frontier Secure option

Change location to zip code 14626
    Enter zipcode and click Check Availability  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}

Select Learn More Button under Content Anywhere Product
    Select Frontier Content Anywhere

Validate Multi-Language Toggle
    wait until page contains  Español
    page should contain  Español