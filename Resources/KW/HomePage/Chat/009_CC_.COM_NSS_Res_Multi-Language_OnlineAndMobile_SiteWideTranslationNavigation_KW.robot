*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../PO/Chat.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC09

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the new Multi-Language Toggle on the Residential Home page
    Select Multi-Language Toggle for Spanish Language

Home page should display in Spanish and toggle display 'English'
    Verify Toggle display English

Navigate to the other pages on the site: Shop
    log  Navigating to Shop Tab

Navigate to Bundles and verify Floating Chat is displayed
    Mouse over on Shop Tab-Spanish
    Select Bundle option-Spanish
    Validate Floating Chat link

Navigate to Internet and verify Floating Chat is displayed
    Mouse over on Shop Tab-Spanish
    Select Internet option-Spanish
    Validate Floating Chat link

Navigate to Phone and verify Floating Chat is displayed
    Mouse over on Shop Tab-Spanish
    Select Phone option-Spanish
    Validate Floating Chat link
Navigate to Video/TV and verify Floating Chat is displayed
    Mouse over on Shop Tab-Spanish
    Select Video/TV option-Spanish
    Validate Floating Chat link

Navigate to Frontier Secure and verify Floating Chat is displayed
    Mouse over on Shop Tab-Spanish
    Select Frontier Secure option-Spanish
    Validate Floating Chat link
Navigate to Moving and verify Floating Chat is displayed
    Mouse over on Shop Tab-Spanish
    Select Moving option-Spanish
    Validate Floating Chat link
Navigate to the other pages on the site: My Account
    Log  Navigating to My Account Tab

Navigate to Account Summary and verify Floating Chat is displayed
    Mouse over on My Account Tab-Spanish
    Select Account Summary option-Spanish
    Validate Floating Chat link
    go back
    sleep  2s

Navigate to My Payments and verify Floating Chat is displayed
    Mouse over on My Account Tab-Spanish
    Select My Payments option-Spanish
    Validate Floating Chat link
    go back
    sleep  2s

Navigate to My Bills and verify Floating Chat is displayed
    Mouse over on My Account Tab-Spanish
    Select My Bills option-Spanish
    Validate Floating Chat link
    go back
    sleep  2s

Navigate to My Profile and verify Floating Chat is displayed
    Mouse over on My Account Tab-Spanish
    Select My Profile option-Spanish
    Validate Floating Chat link
    go back
    sleep  2s

Navigate to My Frontier Mobile App and verify Floating Chat is displayed
    Mouse over on My Account Tab-Spanish
    Select My Frontier Mobile App option-Spanish
    Validate Floating Chat link
Navigate to the other pages on the site: Support
    log  Navigating to Support Tab

Navigate to Help Center and verify Floating Chat is displayed
    Mouse over on Support Tab-Spanish
    Select Help Center option-Spanish
    Validate Floating Chat link
Navigate to Support Wizard and verify Floating Chat is displayed
    Mouse over on Support Tab-Spanish
    Select Support Wizard option-Spanish
    Validate Floating Chat link
Navigate to Trouble Ticket Status and verify Floating Chat is displayed
    Mouse over on Support Tab-Spanish
    Select Trouble Ticket Status option-Spanish
     Validate Floating Chat link
Navigate to Order Status and verify Floating Chat is displayed
    Mouse over on Support Tab-Spanish
    Select Order Status option-Spanish
    Validate Floating Chat link
Navigate to Contact us and verify Floating Chat is displayed
    Mouse over on Support Tab-Spanish
    Select Contact us option-Spanish
    Validate Floating Chat link









