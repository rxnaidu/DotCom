*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Frontier Sites > Get Vantage
    homePage.Select Get Vantage option from Footer

Verify URL changes to Get Vantage Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${GET_VANTAGE_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Secure
    homePage.Select Frontier Secure option from Footer

Verify URL changes to Frontier Secure Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_SECURE_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier BusinessEdge
    homePage.Select Frontier BusinessEdge option from Footer

Verify URL changes to Frontier BusinessEdge Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_BUSINESSEDGE_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Games
    homePage.Select Frontier Games option from Footer

Verify URL changes to Frontier Games Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_GAMES_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier WI-FI
    homePage.Select Frontier WI-FI option from Footer

Verify URL changes to Frontier WI-FI Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_WIFI_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Wholesale
    homePage.Select Wholesale option from Footer

Verify URL changes to Wholesale Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${WHOLESALE_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Yahoo Portal
    homePage.Select Frontier Yahoo Portal option from Footer

Verify URL changes to Frontier Yahoo Portal Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_YAHOO_PORTAL_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Referral Program
    homePage.Select Referral Program option from Footer

Verify URL changes to Referral Program Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${REFERRAL_PROGRAM_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > BusinessEdge Partner Program
    homePage.Select BusinessEdge Partner Program option from Footer

Verify URL changes to BusinessEdge Partner Program Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${BUSINESSEDGE_PARTNER_PROGRAM_URL}
    Verify currnt URL  ${EXPECTED_URL}

