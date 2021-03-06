*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC03

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Navigate to bottom of the Footer home page and click: Support> Contact Us
    Select Contact Us option from Footer

Verify URL changes to Contact Us Page
    wait until page contains  Contact
    page should contain  Contact
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${CONTACT_US_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Help Center
    Select Help Center option from Footer

Verify URL changes to Help Center Page
    wait until page contains  Help Center
    page should contain  Help Center
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${HELP_CENTER_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Order Status
    Select Order Status option from Footer

Verify URL changes to Order Status Page
    wait until page contains  Order Status
    page should contain  Order Status
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${ORDER_STATUS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Trouble Ticket Status
    Select Trouble Ticket Status option from Footer

Verify URL changes to Trouble Ticket Status Page
    wait until page contains  Ticket
    page should contain  Ticket
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${TROUBLE_TICKET_STATUS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Support Wizard
    Select Support Wizard option from Footer

Verify URL changes to Support Wizard Page
    wait until page contains  Support
    page should contain  Support
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${SUPPORT_WIZARD_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Test Your Speed
    Select Test Your Speed option from Footer

Verify URL changes to Test Your Speed Page
    wait until page contains  Test
    page should contain  Test
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${TEST_YOUR_SPEED_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support> Video Gallery
    Select Video Gallery option from Footer

Verify URL changes to Video Gallery Page
    wait until page contains  Video
    page should contain  Video
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${VIDEO_GALLERY_URL}
#    Verify currnt URL  ${EXPECTED_URL}


