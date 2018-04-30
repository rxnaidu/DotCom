*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/MultiLang_PR.robot

*** Variables ***
${TESTCASE_NO}  TC09

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

User mouse over on Shop Tab
    Mouse over on Shop Tab

Validate Language Toggle on the Home Page
    page should contain  Español

Verify all sub tabs are displayed in English under Shop Tab
    Verify Shop sub tabs are displayed

User mouse over on My Account Tab
    Mouse over on My Account Tab

Verify all subtabs are displayed in English under My Account Tab
    Verify My Account sub tabs are displayed

User mouse over on Support Tab
    mouse over on support tab

Verify all subtabs are displayed in English under Support Tab
    verify support sub tabs are displayed