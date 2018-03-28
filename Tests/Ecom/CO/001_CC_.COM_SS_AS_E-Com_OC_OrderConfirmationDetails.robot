*** Settings ***
Library  Selenium2Library  90

Resource  ../../../Resources/KW/Ecom/CO/001_CC_.COM_SS_AS_E-Com_OC_OrderConfirmationDetails_KW.robot
Resource  ../../../Resources/PO/Common.robot

#Test Teardown  Common.End Web Test

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

    Click Checkout button

    Enter [Can be Reached] number and click [Update]

    Select available date from calender

    Enter initial and click Complete order

#    Clear saved products from cart