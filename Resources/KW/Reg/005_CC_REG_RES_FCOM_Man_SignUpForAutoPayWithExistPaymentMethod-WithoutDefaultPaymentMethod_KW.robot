*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/RES/accountSummary.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

${ADD_PAYMENT_METHOD_BTN}  id=btnAddMethod
${MY_PAYMENTS_TAB}  id=lnkPayments
${SIGNUP_FOR_AUTO_PAY}  id=mnuSignup
${PAYMENT_TO_BE_APPLIET_DROPDOWN}  xpath=//select[@ng-model='scheduleDayBefore']
${CONTINUE_BTN}  id=btnForContSignUpID
${CANCEL_BTN}  xpath=//button[@id='btnForContSignUpID']/following-sibling::a
${CONFIRM_BTN}  XPATH=//button[text()='CONFIRM']
${MANAGE_PAYMENT_METHODS}  xpath=//a[text()='Manage Payment Methods ']
${MANAGE_SUTO_PAY}  xpath=//a[text()='Manage Auto Pay ']

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    homePage.User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Select close on auto payment popup
    Close Auto Pay popup

Verify 17 digit Account Number displayed on Account Summary page
    accountSummary.Verify page elements

    ${Expected_Account_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    page should contain  ${Expected_Account_Num}

Mouse over on My Payments Tab and verify displayed options
    wait until element is enabled  ${MY_PAYMENTS_TAB}
    focus  ${MY_PAYMENTS_TAB}
    sleep  1s
    mouse over  ${MY_PAYMENTS_TAB}

    page should contain  Make A Payment
    page should contain  Manage Payment Methods
    page should contain  Sign up for Auto Pay
    page should contain  Payment History

Mouse over on My Payments Tab and select Sign up for Auto Pay option
#    wait until element is enabled  ${MY_PAYMENTS_TAB}
#    focus  ${MY_PAYMENTS_TAB}
#    sleep  1s
#    mouse over  ${MY_PAYMENTS_TAB}

    sleep  1s
    wait until element is enabled  ${SIGNUP_FOR_AUTO_PAY}
    click link  ${SIGNUP_FOR_AUTO_PAY}

    wait until page contains  Sign up for Auto Pay
    wait until page contains  The total due for billing cycle

Validate the display of the Account Field Sign Up for Auto Pay screen
    page should contain  My Payments
    page should contain  Sign up for Auto Pay

    ${Expected_Account_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    page should contain  ${Expected_Account_Num}

Validate the system defaults to "Choose a payment method"
    page should contain  Choose payment method

Validate can select a saved payment method from the drop down menu

Validate the system defaults to "Choose payment rule" in the Payment to be applied field
    page should contain  Choose payment rule

The drop down menu displays 1 -10 day before in the Payment Date field
    page should contain  1 day before
    page should contain  2 days before
    page should contain  3 days before
    page should contain  4 days before
    page should contain  5 days before
    page should contain  6 days before
    page should contain  7 days before
    page should contain  8 days before
    page should contain  9 days before
    page should contain  10 days before

Validate any amount of days can be selected from the drop down menu
    select from list by label  ${PAYMENT_TO_BE_APPLIET_DROPDOWN}  1 day before

Validate in the Amount field the following is displayed: "The total due for billing cycle"
    page should contain  The total due for billing cycle

Below the Amount field is a Continue button and a Cancel link
    page should contain  Continue
    page should contain  Cancel

Validate when the Continue button is selected the user is navigated to the Review & Confirm Auto Pay Settings screen
    click element  ${CONTINUE_BTN}
    wait until page contains  Please Review your Auto Pay settings then Click CONFIRM to continue.

    page should contain  Review & Confirm Auto Pay Settings

Validate the display of: You're almost done!,Please Review your Auto Pay settings then Click CONFIRM to continue
    page should contain  You're almost done!
    page should contain  Please Review your Auto Pay settings then Click CONFIRM to continue

Validate correct data appears in the following fields: Account, Pay from, Amoun The total due for billing cycle
    page should contain  Account
    ${Expected_Account_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    page should contain  ${Expected_Account_Num}

    page should contain  Pay from
    page should contain  account ending in 0002

    page should contain  Payment to be applied
    page should contain  1 day before due date

    page should contain  Amount
    page should contain  The total due for billing cycle

Validate Confirm, Previousand Cancel link buttons are present
    page should contain  CONFIRM
    page should contain  Previous
    page should contain  Cancel

Click Confirm button and validate user is navigating to Auto Pay Confirmation Screen
    click element  ${CONFIRM_BTN}

    wait until page contains  Auto pay Confirmation

Validate page elements on Confirmation screen

    page should contain  You have successfully signed up for Auto Pay.
    ${Expected_Account_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    page should contain  ${Expected_Account_Num}
    page should contain  Print
 #   page should not contain  Sign up for Auto Pay

#Validate when the Make a one time Payment button is clicked the user is navigated to the Make A Payment screen.


Validate in the side tool bar a link that says Manage Auto Pay and when clicked user is navigated to the Manage Auto Pay screen
    wait until element is visible  ${MANAGE_SUTO_PAY}
    sleep  4s
    click element  ${MANAGE_SUTO_PAY}
    wait until page contains  Here are your current settings for Auto Pay
    page should contain  Manage Auto Pay


#==========================

#Select Manage Payment Methods link from side tool bar
#    page should contain  Manage Payment Methods
#    sleep  4s
#    wait until element is visible  ${MANAGE_PAYMENT_METHODS}
#    wait until element is enabled  ${MANAGE_PAYMENT_METHODS}
#    click element  ${MANAGE_PAYMENT_METHODS}
#    wait until page contains  Manage Payment Methods
#
#    page should contain  Add or manage the payment methods associated with your account below
#    page should contain  Account

















