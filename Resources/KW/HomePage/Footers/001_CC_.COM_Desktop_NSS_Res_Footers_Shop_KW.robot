*** Settings ***
Library  Selenium2Library  30
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC01

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Shop > Bundles
    Select Bundle option from Footer

Verify URL changes to Bundles Page
    wait until page contains  bundle
    page should contain  bundle
#    ${EXPECTED_URL}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${BUNDLES_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Internet
    Select Internet option from Footer

Verify URL changes to Internet Page
    wait until page contains  Internet
    page should contain  Internet
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${INTERNET_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Phone
    Select Phone option from Footer

Verify URL changes to Phone Page
    wait until page contains  Phone
    page should contain  Phone
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PHONE_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Video/Tv
    Select Video/TV option from Footer

Verify URL changes to Video/Tv Page
    wait until page contains  Frontier TV
    page should contain  Frontier TV
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${VIDEO_TV_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Frontier Secure
    Select Frontier Secure option from Shop Footer

Verify URL changes to Frontier Secure Page
    wait until page contains  Frontier Secure
    page should contain  Frontier Secure
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${DEGITAL_ESSENTIAL_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Moving
    Select Moving option from Footer

Verify URL changes to Moving Page
    wait until page contains  New home
    page should contain  New home
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${MOVING_URL}
#    Verify currnt URL  ${EXPECTED_URL}

#Navigate to bottom of the Footer home page and click: Shop > Discount Programes
#    homePage.Select Discount Programes option from Footer

#Verify URL changes to Discount Programes Page
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${DISCOUNT_PROGRAMS_URL}
#    Verify currnt URL  ${EXPECTED_URL}



