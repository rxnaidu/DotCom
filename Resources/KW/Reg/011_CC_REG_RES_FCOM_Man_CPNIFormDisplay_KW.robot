*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common.robot
Resource  ../../PO/LoginPage.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC08

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}
    wait until page contains  Shop
    wait until page contains  My Account
    go to  ${URL}

Verify CPNI page details
    wait until page contains  Frontier CPNI
    page should contain  Frontier CPNI Opt Out
    page should contain  Customer Type
    page should contain  First Name
