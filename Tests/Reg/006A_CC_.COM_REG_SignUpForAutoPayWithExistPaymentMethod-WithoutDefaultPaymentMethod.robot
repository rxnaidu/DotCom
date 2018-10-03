*** Settings ***
Library  Selenium2Library  60

Resource  ../../Resources/KW/Reg/005_CC_REG_RES_FCOM_Man_SignUpForAutoPayWithExistPaymentMethod-WithoutDefaultPaymentMethod_KW.robot
Resource  ../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

005_CC_REG_RES_FCOM_Man_SignUpForAutoPayWithExistPaymentMethod-WithoutDefaultPaymentMethod

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Select close on auto payment popup

#    Verify 17 digit Account Number displayed on Account Summary page

#    Mouse over on My Payments Tab and verify displayed options

    Verify Sign Up for Auto Pay option is present

#    Cancel Auto Pay from My Payments Tab

#    Mouse over on My Payments Tab and select Sign up for Auto Pay option

#    Validate the display of the Account Field Sign Up for Auto Pay screen

#    Validate the system defaults to "Choose a payment method"  #--Not displaying on the screen now.

    Validate can select a saved payment method from the drop down menu

    Validate the system defaults to "Choose payment rule" in the Payment to be applied field

    The drop down menu displays 1 -10 day before in the Payment Date field

    Validate any amount of days can be selected from the drop down menu

    Below the Amount field is a Continue button and a Cancel link

    Validate when the Continue button is selected the user is navigated to the Review & Confirm Auto Pay Settings screen

    Validate the display of: You're almost done!,Please Review your Auto Pay settings then Click CONFIRM to continue

    Validate correct data appears in the following fields: Account, Pay from, Amoun The total due for billing cycle

    Validate Confirm, Previousand Cancel link buttons are present

    Click Confirm button and validate user is navigating to Auto Pay Confirmation Screen

    Validate page elements on Confirmation screen

#    Validate in the side tool bar a link that says Manage Auto Pay and when clicked user is navigated to the Manage Auto Pay screen
#
#    # Removing added Auto Payment method for re-executing this test case next time.
#
#    Cancel Auto Pay option





