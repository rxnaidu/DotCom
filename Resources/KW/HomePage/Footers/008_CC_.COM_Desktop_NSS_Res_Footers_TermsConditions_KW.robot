*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC08

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Navigate to bottom of the Footer home page and click: Terms & Conditions
    Select Terms & Conditions option from Footer

Verify URL changes to Terms & Conditions Page
    wait until page contains  Terms and Conditions
    page should contain  Terms and Conditions
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${TERMS_CONDITIONS_URL}
#    Verify currnt URL  ${EXPECTED_URL}