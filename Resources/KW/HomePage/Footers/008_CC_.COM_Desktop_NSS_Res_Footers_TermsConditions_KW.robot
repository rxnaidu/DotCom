*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC08

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Terms & Conditions
    homePage.Select Terms & Conditions option from Footer

Verify URL changes to Terms & Conditions Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${TERMS_CONDITIONS_URL}
    Verify currnt URL  ${EXPECTED_URL}