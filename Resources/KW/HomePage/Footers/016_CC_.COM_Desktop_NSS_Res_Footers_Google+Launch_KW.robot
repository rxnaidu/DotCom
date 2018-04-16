*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC16
${GOOGLE+_TAB_TITLE}  Frontier Communications - Google+

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Google+
    Select Google+ option from Footer

Move to Google+ window Tab
    sleep  6s
    @{titles}  get window titles
    select window  ${GOOGLE+_TAB_TITLE}

Verify URL changes to Google+ Page
    wait until page contains  Frontier Communications
    page should contain  Frontier Communications
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${GOOGLE+_URL}
#    Verify currnt URL  ${EXPECTED_URL}