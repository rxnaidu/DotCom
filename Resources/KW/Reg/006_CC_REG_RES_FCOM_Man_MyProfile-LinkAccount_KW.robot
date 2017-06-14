*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/RES/accountSummary.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

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
    click element  ${LINK_AN_ACCOUNT}
    wait until page contains  Select a method to identify your Account

Select Billing Account Number option and enter account number
    wait until element is visible  ${BILLING_ACCT_NUM}
    click element  ${BILLING_ACCT_NUM}
    sleep  2s
    ${Enter_Your_Acct_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${LINK_BILLING_ACT_NUM}
    input text  ${BILLING_ACCT_NUM_TEXT}  ${Enter_Your_Acct_Num}

    click element  xpath=//span[text()='Continue']

Select Frontier Billing Account PIN and continue
    wait until page contains  For your security
    wait until page contains  Last 4 digits of Credit Card or Bank Account Number
    click element  xpath=//span[text()='Last 4 digits of Credit Card or Bank Account Number']

    sleep  2s
     ${Enter_Your_Acct_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${LINK_BILLING_ACT_NUM}
    input text  ${BILLING_ACCT_NUM_TEXT}  ${Enter_Your_Acct_Num}
    input text  css=[placeholder="1234"]  3812
    click element  xpath=//span[text()='Continue']

validate linked account number




















