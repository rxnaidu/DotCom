*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Internet
    homePage.Select Frontier Internet option from Footer

Verify URL changes to Frontier Internet Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_INTERNET_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Local Internet
    homePage.Select Local Internet option from Footer

Verify URL changes to Local Internet Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${LOCAL_INTERNET_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier FiOS
    homePage.Select Frontier FiOS option from Footer

Verify URL changes to Frontier FiOS Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_FIOS_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Plans
    homePage.Select Frontier Plans option from Footer

Verify URL changes to Frontier Plans Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_PLANS_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS> Frontier Broadband
    homePage.Select Frontier Broadband option from Footer

Verify URL changes to Frontier Broadband Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_BROADBAND_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Internet Plans
    homePage.Select Frontier Internet Plans option from Footer

Verify URL changes to Frontier Internet Plans Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_INTERNET_PLANS_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Bundles
    homePage.Select Frontier Bundles option from Footer

Verify URL changes to Frontier Bundles Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_BUNDLES_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier West
    homePage.Select Frontier West option from Footer

Verify URL changes to Frontier West Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_WEST_URL}
    Verify currnt URL  ${EXPECTED_URL}



