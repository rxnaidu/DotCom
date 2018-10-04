*** Settings ***
Library  Selenium2Library  60

Resource  ../../Resources/KW/Reg/004_CC_REG_RES_FCOM_Man_ManagePaymentMethodsPage-AddandDelete_KW.robot
Resource  ../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

004_CC_REG_RES_FCOM_Man_ManagePaymentMethodsPage-AddandDelete

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Select close on auto payment popup

    Mouse over on My My Payments Tab and select Manage Payment Methods option

    Verify Saved Payment Methods section is displayed

    Click on the Add Payment Method button and validate user is navigated to this page

    Verify 2 radio button, one for Checking Account and another for Credit Card.

    User is able to enter account details on displayed text fields

    Verify tooltip image for Routing Number and Bank Account Number

    Verify Continue and Cancel buttons are displayed

    Click on Continue button and Validate on the "Review and Verify Payment Method" screen

    Click Save Payment Methods button and validate screen is navigated back to the Manage Payment Method screen

    Verify Saved payment methods displayed details

    Click On the Trash can icon or the word Delete

    Verify Delete Payment Method modal window options and click Delete option