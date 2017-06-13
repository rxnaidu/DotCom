*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30
Resource  ../../Resources/KW/Reg/010_CC_REG_RES_FCOM_Man_SiteWideNavigationSignedInUser-SpanishToggle_KW.robot
Resource  ../../Resources/PO/Common/common.robot

#Test Teardown  Common.End Web Test

*** Test Cases ***
010_CC_REG_RES_FCOM_Man_SiteWideNavigationSignedInUser-SpanishToggle

    User launch Ftr.com application using URL

    Select the new Multi-Language Toggle on the Residential Home page

    Home page should display in Spanish and toggle display 'English'

    Navigate to the other pages on the site: Shop

    Navigate to Bundles and verify Spanish text is displayed

    Navigate to Internet and verify Spanish text is displayed

    Navigate to Phone and verify Spanish text is displayed

    Navigate to Video/TV and verify Spanish text is displayed

    Navigate to Digital Essentials and verify Spanish text is displayed

    Navigate to Moving and verify Spanish text is displayed

    Navigate to the other pages on the site: My Account

    Navigate to Account Summary and verify Spanish text is displayed

    Navigate to My Payments and verify Spanish text is displayed

    Navigate to My Bills and verify Spanish text is displayed

    Navigate to My Profile and verify Spanish text is displayed

    Navigate to My Frontier Mobile App and verify Spanish text is displayed

    Navigate to the other pages on the site: Support

    Navigate to Help Center and verify Spanish text is displayed

    Navigate to Support Wizard and verify Spanish text is displayed

    Navigate to Trouble Ticket Status and verify Spanish text is displayed

    Navigate to Order Status and verify Spanish text is displayed

    Navigate to Contact us and verify Spanish text is displayed

