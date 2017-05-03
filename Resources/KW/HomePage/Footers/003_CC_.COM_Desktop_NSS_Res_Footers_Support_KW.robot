*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC03

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: Support> Contact Us
    homePage.Select Contact Us option from Footer

Verify URL changes to Contact Us Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${CONTACT_US_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Help Center
    homePage.Select Help Center option from Footer

Verify URL changes to Help Center Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${HELP_CENTER_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Order Status
    homePage.Select Order Status option from Footer

Verify URL changes to Order Status Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${ORDER_STATUS_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Trouble Ticket Status
    homePage.Select Trouble Ticket Status option from Footer

Verify URL changes to Trouble Ticket Status Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${TROUBLE_TICKET_STATUS_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Support Wizard
    homePage.Select Support Wizard option from Footer

Verify URL changes to Support Wizard Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${SUPPORT_WIZARD_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Test Your Speed
    homePage.Select Test Your Speed option from Footer

Verify URL changes to Test Your Speed Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${TEST_YOUR_SPEED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support> Video Gallery
    homePage.Select Video Gallery option from Footer

Verify URL changes to Video Gallery Page
    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${VIDEO_GALLERY_URL}
    Verify currnt URL  ${EXPECTED_URL}


