*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../PO/Common.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC07

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

User mouse over on My Account Tab
    Mouse over on My Account Tab

Verify all subtabs are displayed under My Account Tab
    Verify My Account sub tabs are displayed
