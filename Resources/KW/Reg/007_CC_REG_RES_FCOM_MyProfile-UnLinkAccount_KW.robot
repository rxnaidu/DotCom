*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/RES/accountSummary.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC07

${MY_PROFILE_TAB}  id=lnkProfile
${ACCT_NUM_UNLINK}  xpath=//*[contains(text(),'5039259450')]//following-sibling::td[4]/a
${POPUP_UNLINK}  xpath=//button[text()='Unlink']

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

Click Unlink for an account number
    wait until page contains  Unlink
    sleep  4s
    wait until element is enabled  ${ACCT_NUM_UNLINK}
    click element  ${ACCT_NUM_UNLINK}

    wait until page contains  You're about to unlink this Account.
    click element  ${POPUP_UNLINK}
    sleep  4s
    wait until page contains  This Account has been unlinked

    page should contain  This Account has been unlinked from your Frontier ID

























