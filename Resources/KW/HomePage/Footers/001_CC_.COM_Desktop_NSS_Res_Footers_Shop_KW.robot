*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC01

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Shop > Bundles
    homePage.Select Bundle option from Footer

Verify URL changes to Bundles Page
    ${EXPECTED_URL}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${BUNDLES_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Internet
    homePage.Select Internet option from Footer

Verify URL changes to Internet Page
    ${EXPECTED_URL}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${INTERNET_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Phone
    homePage.Select Phone option from Footer

Verify URL changes to Phone Page
    ${EXPECTED_URL}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PHONE_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Video/Tv
    homePage.Select Video/TV option from Footer

Verify URL changes to Video/Tv Page
    ${EXPECTED_URL}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${VIDEO_TV_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Degital Essentials
    homePage.Select Degital Essentials option from Footer

Verify URL changes to Degital Essentials Page
    ${EXPECTED_URL}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${DEGITAL_ESSENTIAL_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Moving
    homePage.Select Moving option from Footer

Verify URL changes to Moving Page
    ${EXPECTED_URL}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${MOVING_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Discount Programes
    homePage.Select Discount Programes option from Footer

Verify URL changes to Discount Programes Page
    ${EXPECTED_URL}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${DISCOUNT_PROGRAMS_URL}
    Verify currnt URL  ${EXPECTED_URL}



