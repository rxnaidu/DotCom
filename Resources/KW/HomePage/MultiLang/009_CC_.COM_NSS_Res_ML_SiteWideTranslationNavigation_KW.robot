*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/Shop.robot
Resource  ../../../PO/RES/MyAccount.robot
Resource  ../../../PO/RES/Support.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC09

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

User mouse over on Shop Tab
    shop.Mouse over on Shop Tab

Validate Language Toggle on the Home Page
    page should contain  Español

Verify all sub tabs are displayed in English under Shop Tab
    shop.Verify Shop sub tabs are displayed

User mouse over on My Account Tab
    myAccount.Mouse over on My Account Tab

Verify all subtabs are displayed in English under My Account Tab
    myAccount.Verify My Account sub tabs are displayed

User mouse over on Support Tab
    support.mouse over on support tab

Verify all subtabs are displayed in English under Support Tab
    support.verify support sub tabs are displayed