*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/008_CC_.COM_NSS_Res_Multi-Language_OnlineAndMobile_LanguageToggleFunctionalityonMobileAppPage_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Chat Validations

    User launch Ftr.com application using URL

    Select the Mobile App option from the Support Category Drop down

    Validate MyFrontier Mobole App Landing Page

    Select the new Multi-Language Toggle on the MyFrontier Mobile App Landing page

    Validate page display in Spanish instead of English