*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/HomeRes.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC12
${TWITTER_TAB_TITLE}  Frontier Comm (@FrontierCorp) | Twitter

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Twitter
    Select Twitter option from Footer

Move to Twitter window Tab
    sleep  6s
    @{titles}  get window titles
    select window  ${TWITTER_TAB_TITLE}

Verify URL changes to Twitter Page
    wait until page contains  Twitter
    page should contain  Twitter
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${TWITTER_URL}
#    Verify currnt URL  ${EXPECTED_URL}