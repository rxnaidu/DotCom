*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../PO/Common.robot
Resource  ../../../../PO/LoginPage.robot
Resource  ../../../../PO/HomePage.robot
Resource  ../../../../PO/HomePageHeader.robot
Resource  ../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC27

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Change location to Illionis copper zip code
    Enter zipcode and click Check Availability  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}

Select Frontier Secure from Shop Drop down
    Mouse over on Shop Tab
    Select Frontier Secure option

Validate Frontier Secure page
    wait until page contains  Frontier Secure
    page should contain  Frontier Secure