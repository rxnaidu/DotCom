*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC15
${YOUTUBE_TAB_TITLE}   Frontier Communications - YouTube - YouTube
*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: YouTube
    homePage.Select YouTube option from Footer

Move to YouTube window Tab
    sleep  4s
    @{titles}  get window titles
    select window  ${YOUTUBE_TAB_TITLE}

Verify URL changes to YouTube Page
    wait until page contains  Frontier Communications
    page should contain  Frontier Communications
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${YOUTUBE_URL}
#    Verify currnt URL  ${EXPECTED_URL}