*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Navigate to bottom of the Footer home page and click: Frontier Sites > Get Vantage
    Select Get Vantage option from Footer

Verify URL changes to Get Vantage Page
    wait until page contains  Vantage
    page should contain  Vantage
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${GET_VANTAGE_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Secure
    Select Frontier Secure option from Footer

Verify URL changes to Frontier Secure Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_SECURE_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Business
    Select Frontier Business option from Footer

Verify URL changes to Frontier Business Page
    wait until page contains  Business
    page should contain  Business
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_BUSINESS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Games
    Select Frontier Games option from Footer

Verify URL changes to Frontier Games Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_GAMES_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier WI-FI
    Select Frontier WI-FI option from Footer

Verify URL changes to Frontier WI-FI Page
    wait until page contains  Wi-Fi
    page should contain  Wi-Fi
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_WIFI_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Wholesale
    Select Wholesale option from Footer

Verify URL changes to Wholesale Page
    wait until page contains  Wholesale
    page should contain  Wholesale
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${WHOLESALE_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Yahoo Portal
    Select Frontier Yahoo Portal option from Footer

Verify URL changes to Frontier Yahoo Portal Page
    wait until page contains  Frontier
    page should contain  Frontier
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_YAHOO_PORTAL_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Online Phone Directories
    Select Online Phone Directories option from Footer

Verify URL changes to Online Phone Directories Page
    wait until page contains  Frontier
    page should contain  Frontier

Navigate to bottom of the Footer home page and click: Frontier Sites > Referral Program
    Select Referral Program option from Footer

Verify URL changes to Referral Program Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${REFERRAL_PROGRAM_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Business Partner
    Select Frontier Business Partner option from Footer

Verify URL changes to Frontier Business Partner Page
    wait until page contains  Partner
    page should contain  Partner
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_BUSINESS_PARTNER_URL}
#    Verify currnt URL  ${EXPECTED_URL}

