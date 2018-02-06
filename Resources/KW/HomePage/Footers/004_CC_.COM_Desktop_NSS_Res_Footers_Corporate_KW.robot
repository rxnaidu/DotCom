*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC04

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Corporate > About Us
    homePage.Select About Us option from Footer

Verify URL changes to About Us Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${ABOUT_US_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Investor Relations
    homePage.Select Investor Relations option from Footer

Verify URL changes to Investor Relations Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${INVESTOR_RELATIONS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > News
    homePage.Select News option from Footer

Verify URL changes to News Page
    wait until page contains  News
    page should contain  News
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${NEWS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Careers
    homePage.Select Careers option from Footer

Verify URL changes to Careers Page
    wait until page contains  Current Openings
    page should contain  Current Openings
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${CAREERS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Suppliers
    homePage.Select Suppliers option from Footer

Verify URL changes to Suppliers Page
    wait until page contains  supplier
    page should contain  supplier
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${SUPPLIERS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Pressroom
    homePage.Select Pressroom option from Footer

Verify URL changes to Pressroom Page
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PRESSROOM_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Making a Difference
    homePage.Select Making a Difference option from Footer

Verify URL changes to Making a Difference
    wait until page contains
    page should contain
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${MAKING_A_DIFFERENCE}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Public Inspection Files
    homePage.Select Public Inspection Files option from Footer

Verify URL changes to Public Inspection Files Page
    wait until page contains  Inspection
    page should contain  Inspection
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PUBLIC_INSPECTION_FILES_URL}
#    Verify currnt URL  ${EXPECTED_URL}


