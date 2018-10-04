*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common.robot
Resource  ../../PO/LoginPage.robot
Resource  ../../PO/HomePage.robot
Resource  ../../PO/AccountSummary.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

${ADD_PAYMENT_METHOD_BTN}  id=btnAddMethod
${MY_PAYMENTS_TAB}  id=lnkPayments
${MY_PROFILE_TAB}  id=lnkProfile
${SIGNUP_FOR_AUTO_PAY}  id=mnuSignup
${PAYMENT_TO_BE_APPLIET_DROPDOWN}  xpath=//select[@ng-model='scheduleDayBefore']
${CONTINUE_BTN}  id=btnForContSignUpID
${CANCEL_BTN}  xpath=//button[@id='btnForContSignUpID']/following-sibling::a
${CONFIRM_BTN}  XPATH=//button[text()='CONFIRM']
${MANAGE_PAYMENT_METHODS}  xpath=//a[text()='Manage Payment Methods ']

${LINK_AN_ACCOUNT}  xpath=//a[text()='Link an Account ']
${LINK_ANOTHER_ACCOUNT}  xpath=//a[text()='Link another Account']
${BILLING_ACCT_NUM}  xpath=//span[text()='Billing Account Number']
${BILLING_ACCT_NUM_TEXT}   css=[placeholder="12345678901234567"]
${FTR_BLG_ACT_PIN_RADIO}  xpath=//span[text()='Frontier Billing Account PIN']
${FTR_BLG_ACT_PIN_INP}  css=.input-selected #link-account-id
${LINK_CONTINUE}  xpath=//span[text()='Continue']
*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Select close on auto payment popup
    Close Auto Pay popup

Verify 17 digit Account Number displayed on Account Summary page
    accountSummary.Verify page elements

    ${Expected_Account_Num}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    page should contain  ${Expected_Account_Num}

Select My Profile from the 2nd Tier Nav Tab
    wait until element is enabled  ${MY_PROFILE_TAB}
    focus  ${MY_PROFILE_TAB}
    sleep  1s
    click element  ${MY_PROFILE_TAB}
   wait until page contains  Frontier ID, Password & Email Notifications

Validate Frontier ID, Password & Email Notifications Section data
    wait until page contains  Frontier ID
    wait until page contains  Password
    wait until page contains  Mobile Number
    sleep  4s

    page should contain  Account Number
    page should contain  Street Address
    page should contain  City, State and ZIP
    page should contain  Services
    page should contain  Link another Account

Validate Acct no, Address in My Profile page

Click Link An Account
    wait until page contains  Link an Account
    wait until element is enabled  ${LINK_AN_ACCOUNT}
    wait until element is visible  ${LINK_AN_ACCOUNT}
    sleep  6s
    run keyword and ignore error  click element  ${AUTOPAY_POPUP}
    sleep  2s
    click element  ${LINK_AN_ACCOUNT}
    wait until page contains  Select a method to identify your Account

Select Billing Account Number option and enter account number
    wait until page contains  Billing Account Number
    wait until element is visible  ${BILLING_ACCT_NUM}
    sleep  4s
    click element  ${BILLING_ACCT_NUM}
    sleep  2s
    ${Enter_Your_Acct_Num}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${LINK_BILLING_ACT_NUM}
    input text  ${BILLING_ACCT_NUM_TEXT}  ${Enter_Your_Acct_Num}

    click element  ${LINK_CONTINUE}

Select Frontier Billing Account PIN and continue
    wait until page contains  For your security
    wait until page contains  Frontier Billing Account PIN
    wait until element is enabled  ${FTR_BLG_ACT_PIN_RADIO}
    click element  ${FTR_BLG_ACT_PIN_RADIO}
    sleep  2s
    wait until element is enabled  ${FTR_BLG_ACT_PIN_INP}

    Scroll Page To Locator View  xpath=//span[text()='Frontier Billing Account PIN']

    ${Enter_Your_Acct_Num}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${LINK_BILLING_ACT_PIN}
    input text  ${FTR_BLG_ACT_PIN_INP}  ${Enter_Your_Acct_Num}
    click element  ${LINK_CONTINUE}
    wait until page contains  Your Frontier ID has been linked to this Account
    sleep  4s






















