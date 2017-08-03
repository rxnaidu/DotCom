*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC11

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}
    wait until page contains  Shop
    wait until page contains  My Account
    go to  https://qat02.frontier.com/resources/cpni

Verify CPNI page details
    page should contain  optout-title
    page should contain  Customer Type
    page should contain  First Name
