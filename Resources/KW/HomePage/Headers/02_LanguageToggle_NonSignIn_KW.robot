*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC02

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}
    maximize browser window
Select the new Multi-Language Toggle on the Residential Home page
    Select Multi-Language Toggle for Spanish Language

Home page should display in Spanish and toggle display 'English'
    Verify Toggle display English

Navigate to the other pages on the site: Shop
    log  Navigating to Shop Tab

Navigate to Bundles and verify Spanish text is displayed
    Mouse over on Shop Tab-Spanish
    Select Bundle option-Spanish
    Verify Spanish Text is displayed on Bundle page

Navigate to Internet and verify Spanish text is displayed
    Mouse over on Shop Tab-Spanish
    Select Internet option-Spanish
    Verify Spanish Text is displayed on Internet page

Navigate to Phone and verify Spanish text is displayed
    Mouse over on Shop Tab-Spanish
    Select Phone option-Spanish
    Verify Spanish Text is displayed on Phone page

Navigate to Video/TV and verify Spanish text is displayed
    Mouse over on Shop Tab-Spanish
    Select Video/TV option-Spanish
    Verify Spanish Text is displayed on Video/TV page

Navigate to Frontier Secure and verify Spanish text is displayed
    Mouse over on Shop Tab-Spanish
    Select Frontier Secure option-Spanish
    Verify Spanish Text is displayed on Frontier Secure page

Navigate to Moving and verify Spanish text is displayed
    Mouse over on Shop Tab-Spanish
    Select Moving option-Spanish
    Verify Spanish Text is displayed on Moving page

Navigate to the other pages on the site: My Account
    Log  Navigating to My Account Tab

Navigate to Account Summary and verify Spanish text is displayed
    Mouse over on My Account Tab-Spanish
    Select Account Summary option-Spanish
    Verify Spanish Text is displayed on Account Summary page
    go back
    sleep  2s

Navigate to My Payments and verify Spanish text is displayed
    Mouse over on My Account Tab-Spanish
    Select My Payments option-Spanish
    Verify Spanish Text is displayed on My Payments page
    go back
    sleep  2s

Navigate to My Bills and verify Spanish text is displayed
    Mouse over on My Account Tab-Spanish
    Select My Bills option-Spanish
    Verify Spanish Text is displayed on My Bills page
    go back
    sleep  2s

Navigate to My Profile and verify Spanish text is displayed
    Mouse over on My Account Tab-Spanish
    Select My Profile option-Spanish
    Verify Spanish Text is displayed on My Profile page
    go back
    sleep  2s

Navigate to My Frontier Mobile App and verify Spanish text is displayed
    Mouse over on My Account Tab-Spanish
    Select My Frontier Mobile App option-Spanish
    Verify Spanish Text is displayed on My Frontier Mobile App page

Navigate to the other pages on the site: Support
    log  Navigating to Support Tab

Navigate to Help Center and verify Spanish text is displayed
    Mouse over on Support Tab-Spanish
    Select Help Center option-Spanish
    Verify Spanish Text is displayed on Help Center page

Navigate to Support Wizard and verify Spanish text is displayed
    Mouse over on Support Tab-Spanish
    Select Support Wizard option-Spanish
    Verify Spanish Text is displayed on Support Wizard page

Navigate to Trouble Ticket Status and verify Spanish text is displayed
    Mouse over on Support Tab-Spanish
    Select Trouble Ticket Status option-Spanish
    Verify Spanish Text is displayed on Trouble Ticket Status page

Navigate to Order Status and verify Spanish text is displayed
    Mouse over on Support Tab-Spanish
    Select Order Status option-Spanish
    Verify Spanish Text is displayed on Order Status page

Navigate to Contact us and verify Spanish text is displayed
    Mouse over on Support Tab-Spanish
    Select Contact us option-Spanish
    Verify Spanish Text is displayed on Contact us page










