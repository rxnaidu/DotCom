*** Settings ***
Library  Selenium2Library
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Shop/shop.robot
Resource  ../../PO/RES/MyAccount/myAccount.robot
Resource  ../../PO/RES/Support/support.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/Common/common.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC07

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}
    maximize browser window
Select the new Multi-Language Toggle on the Residential Home page
    homePage.Select Multi-Language Toggle for Spanish Language

Home page should display in Spanish and toggle display 'English'
    homePage.Verify Toggle display English

Navigate to the other pages on the site: Shop
    log  Navigating to Shop Tab

Navigate to Bundles and verify Spanish text is displayed
    shop.Mouse over on Shop Tab-Spanish
    shop.Select Bundle option-Spanish
    shop.Verify Spanish Text is displayed on Bundle page

Navigate to Internet and verify Spanish text is displayed
    shop.Mouse over on Shop Tab-Spanish
    shop.Select Internet option-Spanish
    shop.Verify Spanish Text is displayed on Internet page

Navigate to Phone and verify Spanish text is displayed
    shop.Mouse over on Shop Tab-Spanish
    shop.Select Phone option-Spanish
    shop.Verify Spanish Text is displayed on Phone page

Navigate to Video/TV and verify Spanish text is displayed
    shop.Mouse over on Shop Tab-Spanish
    shop.Select Video/TV option-Spanish
    shop.Verify Spanish Text is displayed on Video/TV page

Navigate to Frontier Secure and verify Spanish text is displayed
    shop.Mouse over on Shop Tab-Spanish
    shop.Select Frontier Secure option-Spanish
    shop.Verify Spanish Text is displayed on Frontier Secure page

Navigate to Moving and verify Spanish text is displayed
    shop.Mouse over on Shop Tab-Spanish
    shop.Select Moving option-Spanish
    shop.Verify Spanish Text is displayed on Moving page

Navigate to the other pages on the site: My Account
    Log  Navigating to My Account Tab

Navigate to Account Summary and verify Spanish text is displayed
    myAccount.Mouse over on My Account Tab-Spanish
    myAccount.Select Account Summary option-Spanish
    myAccount.Verify Spanish Text is displayed on Account Summary page
    go back
    sleep  2s

Navigate to My Payments and verify Spanish text is displayed
    myAccount.Mouse over on My Account Tab-Spanish
    myAccount.Select My Payments option-Spanish
    myAccount.Verify Spanish Text is displayed on My Payments page
    go back
    sleep  2s

Navigate to My Bills and verify Spanish text is displayed
    myAccount.Mouse over on My Account Tab-Spanish
    myAccount.Select My Bills option-Spanish
    myAccount.Verify Spanish Text is displayed on My Bills page
    go back
    sleep  2s

Navigate to My Profile and verify Spanish text is displayed
    myAccount.Mouse over on My Account Tab-Spanish
    myAccount.Select My Profile option-Spanish
    myAccount.Verify Spanish Text is displayed on My Profile page
    go back
    sleep  2s

Navigate to My Frontier Mobile App and verify Spanish text is displayed
    myAccount.Mouse over on My Account Tab-Spanish
    myAccount.Select My Frontier Mobile App option-Spanish
    myAccount.Verify Spanish Text is displayed on My Frontier Mobile App page

Navigate to the other pages on the site: Support
    log  Navigating to Support Tab

Navigate to Help Center and verify Spanish text is displayed
    support.Mouse over on Support Tab-Spanish
    support.Select Help Center option-Spanish
    support.Verify Spanish Text is displayed on Help Center page

Navigate to Support Wizard and verify Spanish text is displayed
    support.Mouse over on Support Tab-Spanish
    support.Select Support Wizard option-Spanish
    support.Verify Spanish Text is displayed on Support Wizard page

Navigate to Trouble Ticket Status and verify Spanish text is displayed
    support.Mouse over on Support Tab-Spanish
    support.Select Trouble Ticket Status option-Spanish
    support.Verify Spanish Text is displayed on Trouble Ticket Status page

Navigate to Order Status and verify Spanish text is displayed
    support.Mouse over on Support Tab-Spanish
    support.Select Order Status option-Spanish
    support.Verify Spanish Text is displayed on Order Status page

Navigate to Contact us and verify Spanish text is displayed
    support.Mouse over on Support Tab-Spanish
    support.Select Contact us option-Spanish
    support.Verify Spanish Text is displayed on Contact us page










