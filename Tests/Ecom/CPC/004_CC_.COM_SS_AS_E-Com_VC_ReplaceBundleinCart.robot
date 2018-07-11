*** Settings ***
Library  Selenium2Library  90

Resource  ../../../Resources/KW/Ecom/CPC/004_CC_.COM_SS_AS_E-Com_VC_ReplaceBundleinCart_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

ECOM Regression

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

#    Select Account Number

    Verify Video Add Shop option is displayed under Account Summary

    Select close on auto payment popup

    Click Shop button for Video Upgrade

    Click Select button for adding Fios TV Preferred HD product

    Validate Fios TV Preferred HD is added to Order Summary Page

    Select Back button and replace Fios TV Extreme HD product

    Validate Fios TV Extreme HD is added to Order Summary Page

    Clear saved products from cart