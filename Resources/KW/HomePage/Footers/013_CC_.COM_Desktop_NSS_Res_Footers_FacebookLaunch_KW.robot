*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/HomeRes.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC13
${FACEBOOK_TAB_TITLE}  Frontier Communications - Home | Facebook

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Facebook
    Select Facebook option from Footer

Move to Facebook window Tab
    wait until page contains  facebook
    sleep  6s
    @{titles}  get window titles
    select window  ${FACEBOOK_TAB_TITLE}

Verify URL changes to Facebook Page
    wait until page contains  facebook
    page should contain  facebook
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FACEBOOK_URL}
#    Verify currnt URL  ${EXPECTED_URL}