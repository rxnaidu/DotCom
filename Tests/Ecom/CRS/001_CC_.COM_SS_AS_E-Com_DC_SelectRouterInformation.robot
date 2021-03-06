*** Settings ***
Library  Selenium2Library  90

Resource  ../../../Resources/KW/Ecom/CRS/001_CC_.COM_SS_AS_E-Com_DC_SelectRouterInformation_KW.robot
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

    Click Shop button for Video Add

    Click Select button for adding Fios TV Preferred HD product

    Select Sports Pass Channel package

    Click on Continue Button on Channel selection page

    Select FiOS Quantum TV Premium on DVR selection Page

    Click on Continue Button on DVR selection Page

    Select FiOS Quantum Gateway Router

#    Clear saved products from cart