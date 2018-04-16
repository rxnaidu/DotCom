*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC09

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Privacy Policy
    Select Privacy Policy option from Footer
    sleep  2s

Verify URL changes to Privacy Policy Page
    wait until page contains  Frontier Communications  30s
    page should contain  Frontier Communications
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PRIVACY_POLICY_URL}
#    Verify currnt URL  ${EXPECTED_URL}