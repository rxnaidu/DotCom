*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/RES/accountSummary.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC04

${ADD_PAYMENT_METHOD_BTN}  id=btnAddMethod
${MY_PAYMENTS_TAB}  id=lnkPayments
${MANAGE_PAYMENT_METHODS}  id=mnuMethods
${CHECKING_ACCT_RADIO}  id=fundingAccountTypeACH
${CREDIT_CARD_RADIO}  id=fundingAccountTypeCreditCard
${ROUTING_NUMBER_INP}  id=routingNumber
${BANK_ACCOUNT_NUMBER_INP}  id=fundingAccountNumber
${RE_ENTER_BANK_ACCOUNT_NUMBER_INP}  id=fundingAccountNumberRetype
${CHECK_IMG}  xpath=//div[@id='routingNumberHelp']/img
${CONTINUE_BTN}  id=btnAchAddVerifySubmit
${CANCEL_BTN}  xpath=//a[@id="btnAchAddVerifySubmit"]/following-sibling::a[1]
${SAVE_PAYMENT_METHOD_BTN}  xpath=//span[text()='Save Payment Method']
${DELETE_TRASH_BTN}  xpath=//span[contains(text(),'account ending in 0002')]/../i
${DO_NOT_DELETE_BTN}  xpath=//button[text()='No, Do Not Delete']

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    homePage.User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Select close on auto payment popup
    sleep  30s
    Close Auto Pay popup

Verify 17 digit Account Number displayed on Account Summary page
    accountSummary.Verify page elements

    ${Expected_Account_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    page should contain  ${Expected_Account_Num}

Mouse over on My My Payments Tab and verify displayed options
    page should contain  Mage A Payment
    page should contain  Manage Payment Methods
    page should contain  Sign up for Auto Pay
    page should contain  Payemnt History

Mouse over on My My Payments Tab and select Manage Payment Methods option
    wait until element is enabled  ${MY_PAYMENTS_TAB}
    focus  ${MY_PAYMENTS_TAB}
    sleep  1s
    mouse over  ${MY_PAYMENTS_TAB}

    sleep  1s
    wait until element is enabled  ${MANAGE_PAYMENT_METHODS}
    click link  ${MANAGE_PAYMENT_METHODS}

    wait until page contains  Manage Payment Methods
    wait until page contains  Add or manage the payment methods associated with your account below

Validate Account number under Manage Payment Methods description
    page should contain  Add or manage the payment methods associated with your account below. You can make changes to saved payment methods or add a new credit card or checking account.

    ${Expected_Account_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    page should contain  ${Expected_Account_Num}

Verify displayed button text under Account number

    ${Expected_Name_Button_Text}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${NAME_BUTTON_TEXT}

    element should contain  ${ADD_PAYMENT_METHOD_BTN}   ${Expected_Name_Button_Text}

Verify Saved Payment Methods section is displayed
    page should contain  Saved Payment Methods

Click on the Add Payment Method button and validate user is navigated to this page
    wait until element is visible  ${ADD_PAYMENT_METHOD_BTN}
    wait until element is enabled  ${ADD_PAYMENT_METHOD_BTN}
    sleep  10s
    focus  ${ADD_PAYMENT_METHOD_BTN}
    click button  ${ADD_PAYMENT_METHOD_BTN}
    sleep  4s

Verify 2 radio button, one for Checking Account and another for Credit Card.
    select frame  id=iframe
    wait until page contains  Checking account
    wait until page contains  Credit card

    page should contain  Checking account
    page should contain  Credit card

User is able to enter account details on displayed text fields
    select frame  id=iframe
    wait until page contains  Name on Bank Account
    wait until page contains  Select the type of payment

    page should contain  Select the type of payment method you'd like to add
    page should contain  Enter your checking account information below

    ${Routing_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ROUTING_NUMBER}
    ${Bank_Acct_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BANK_ACCOUNT_NUMBER}
    ${Re_Enter_Bank_Acct_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${RE_ENTER_BANK_ACCOUNT_NUMBER}

    select frame  id=iframe
    wait until element is enabled  id=routingNumber

    input text  ${ROUTING_NUMBER_INP}  ${Routing_Num}
    input text  ${BANK_ACCOUNT_NUMBER_INP}  ${Bank_Acct_Num}
    input text  ${RE_ENTER_BANK_ACCOUNT_NUMBER_INP}  ${Re_Enter_Bank_Acct_Num}

Verify check image is displayed on the screen
    page should contain image  ${CHECK_IMG}

Verify Continue and Cancel buttons are displayed
    #Cancel button check
    page should contain element  ${CANCEL_BTN}

    #Continue Button
    page should contain element  ${CONTINUE_BTN}

Click on Cancel button and validate user is navigated to Manage Payment Method screen
    wait until element is enabled  ${CANCEL_BTN}
    click element  ${CANCEL_BTN}
    wait until page contains  Manage Payment Methods

Click on Continue button and Validate on the "Review and Verify Payment Method" screen
    #Continue Button
    click element  ${CONTINUE_BTN}
    wait until page contains  Please make sure your payment method is set up correctly.

    page should contain  Name on Bank Account
    page should contain  Routing Number

Click Save Payment Methods button and validate screen is navigated back to the Manage Payment Method screen
    select frame  id=iframe
    wait until page contains  Save Payment Method

    wait until element is enabled  ${SAVE_PAYMENT_METHOD_BTN}
    click element  ${SAVE_PAYMENT_METHOD_BTN}

Verify Saved payment methods displayed details
    wait until page contains  account ending in 0002
    wait until page contains  Saved Payment Methods

    page should contain  Saved Payment Methods
#    page should contain  Checking account ending in 0002

Click On the Trash can icon or the word Delete and validate modal window is displayed
    #Checking account ending in 0002 is having Delete option
    page should contain element  ${DELETE_TRASH_BTN}

Verify Delete Payment Method modal window options
    #Delete trash button
    wait until element is enabled  ${DELETE_TRASH_BTN}
    sleep  6s
    click element  ${DELETE_TRASH_BTN}

    sleep  2s
    page should contain  Delete Payment Method
    page should contain  Are you sure you wish to DELETE the payment method?
    wait until element is enabled  ${DO_NOT_DELETE_BTN}
    click element  ${DO_NOT_DELETE_BTN}
















