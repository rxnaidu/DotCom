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

Navigate to bottom of the Footer home page and click: Regional Sites > Central
    homePage.Select Central option from Footer

Verify URL changes to Central Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${CENTRAL_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > East
    homePage.Select East option from Footer

Verify URL changes to East Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${EAST_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > Mid-South
    homePage.Select Mid-South option from Footer

Verify URL changes to Mid-South Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${MID-SOUTH_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > National-IL,IA,MN,NE,UT
    homePage.Select National-IL,IA,MN,NE,UT option from Footer

Verify URL changes to National-IL,IA,MN,NE,UT Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${NATIONAL-IL-IA-MN-NE-UT_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > National-ID,MT
    homePage.Select National-ID,MT option from Footer

Verify URL changes to National-ID,MT Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${NATIONAL-ID-MT_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > South
    homePage.Select South option from Footer

Verify URL changes to South Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${SOUTH_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > Southeast
    homePage.Select Southeast option from Footer

Verify URL changes to Southeast Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${SOUTHEAST_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > West
    homePage.Select West option from Footer

Verify URL changes to West Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${WEST_URL}
    Verify currnt URL  ${EXPECTED_URL}



