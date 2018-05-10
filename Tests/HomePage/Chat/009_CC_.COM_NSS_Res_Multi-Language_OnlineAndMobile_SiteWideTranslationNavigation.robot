*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/009_CC_.COM_NSS_Res_Multi-Language_OnlineAndMobile_SiteWideTranslationNavigation_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
Chat Validations

    User launch Ftr.com application using URL

    Select the new Multi-Language Toggle on the Residential Home page

    Home page should display in Spanish and toggle display 'English'

    Navigate to the other pages on the site: Shop

    Navigate to Bundles and verify Floating Chat is displayed

    Navigate to Internet and verify Floating Chat is displayed

    Navigate to Phone and verify Floating Chat is displayed

    Navigate to Video/TV and verify Floating Chat is displayed

    Navigate to Frontier Secure and verify Floating Chat is displayed

    Navigate to Moving and verify Floating Chat is displayed

    Navigate to the other pages on the site: My Account

    Navigate to Account Summary and verify Floating Chat is displayed

    Navigate to My Payments and verify Floating Chat is displayed

    Navigate to My Bills and verify Floating Chat is displayed

    Navigate to My Profile and verify Floating Chat is displayed

    Navigate to My Frontier Mobile App and verify Floating Chat is displayed

    Navigate to the other pages on the site: Support

    Navigate to Help Center and verify Floating Chat is displayed

    Navigate to Support Wizard and verify Floating Chat is displayed

    Navigate to Trouble Ticket Status and verify Floating Chat is displayed

    Navigate to Order Status and verify Floating Chat is displayed

    Navigate to Contact us and verify Floating Chat is displayed

