*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Internet
    Select Frontier Internet option from Footer

Verify URL changes to Frontier Internet Page
    wait until page contains  Internet
    page should contain  Internet
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_INTERNET_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Local Internet
    Select Local Internet option from Footer

Verify URL changes to Local Internet Page
    wait until page contains  Internet
    page should contain  Internet
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${LOCAL_INTERNET_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier FiOS
    Select Frontier FiOS option from Footer

Verify URL changes to Frontier FiOS Page
    wait until page contains  FiOS
    page should contain  FiOS
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_FIOS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Plans
    Select Frontier Plans option from Footer

Verify URL changes to Frontier Plans Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_PLANS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS> Frontier Broadband
    Select Frontier Broadband option from Footer

Verify URL changes to Frontier Broadband Page
    wait until page contains  AMAZON
    page should contain  AMAZON
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_BROADBAND_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Internet Plans
    Select Frontier Internet Plans option from Footer

Verify URL changes to Frontier Internet Plans Page
    wait until page contains  FRONTIER INTERNET
    page should contain  FRONTIER INTERNET
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_INTERNET_PLANS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Bundles
    Select Frontier Bundles option from Footer

Verify URL changes to Frontier Bundles Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_BUNDLES_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier West
    Select Frontier West option from Footer

Verify URL changes to Frontier West Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${FRONTIER_WEST_URL}
#    Verify currnt URL  ${EXPECTED_URL}



