*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../PO/Common.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

User mouse over on Shop Tab
    Mouse over on Shop Tab

Verify all sub tabs are displayed under Shop Tab
    Verify Shop sub tabs are displayed