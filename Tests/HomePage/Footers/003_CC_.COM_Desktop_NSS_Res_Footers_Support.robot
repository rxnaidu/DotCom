*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/003_CC_.COM_Desktop_NSS_Res_Footers_Support_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${CONTACT_US_URL}  https://qat03.frontier.com/contact-us#/residential
${HELP_CENTER_URL}  https://qat03.frontier.com/helpcenter
${ORDER_STATUS_URL}  https://qat03.frontier.com/helpcenter/categories/order-status
${TROUBLE_TICKET_STATUS_URL}  https://qat03.frontier.com/helpcenter/categories/ticket-status
${SUPPORT_WIZARD_URL}  https://qat03.frontier.com/HelpCenter/SupportWizard/Troubleshoot/Sign-in/Get-Started
${TEST_YOUR_SPEED_URL}  https://qat03.frontier.com/helpcenter/categories/internet/troubleshooting/speed-test
${VUDEO_GALLERY_URL}  https://qat03.frontier.com/helpcenter/videogallery

*** Test Cases ***
003_CC_.COM_Desktop_NSS_Res_Footers_Support

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Support> Contact Us

    Verify URL changes to Contact Us Page  ${CONTACT_US_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Help Center

    Verify URL changes to Help Center Page  ${HELP_CENTER_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Order Status

    Verify URL changes to Order Status Page  ${ORDER_STATUS_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Trouble Ticket Status

    Verify URL changes to Trouble Ticket Status Page  ${TROUBLE_TICKET_STATUS_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Support Wizard

    Verify URL changes to Support Wizard Page  ${SUPPORT_WIZARD_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Test Your Speed

    Verify URL changes to Test Your Speed Page  ${TEST_YOUR_SPEED_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support> Video Gallery

    Verify URL changes to Video Gallery Page  ${VUDEO_GALLERY_URL}


