*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/MyAccount/myAccount.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC07

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

User mouse over on My Account Tab
    myAccount.Mouse over on My Account Tab

Verify all subtabs are displayed under My Account Tab
    myAccount.Verify My Account sub tabs are displayed
