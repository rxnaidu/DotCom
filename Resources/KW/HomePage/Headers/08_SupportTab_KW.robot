*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Support/support.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC08

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

User mouse over on Support Tab
    support.mouse over on support tab

Verify all subtabs are displayed under Support Tab
    support.verify support sub tabs are displayed

