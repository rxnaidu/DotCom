*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/RES/accountSummary.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

${MY_PROFILE_TAB}  id=lnkProfile
#${ACCT_NUM_UNLINK}  xpath=//*[contains(text(),'8139864707110714')]//following-sibling::td[4]/a
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
    sleep  6s
    scroll_down_page_half

    ${Remove_Acct_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${UNLINK_ACT_NUM}
    ${hh_Remove_Acct_Num}  set variable  '${Remove_Acct_Num}'
    ${hh_ACCT_NUM_UNLINK}  set variable  xpath=//*[contains(text(), ${hh_Remove_Acct_Num})]//following-sibling::td[4]/a

    wait until element is enabled  ${hh_ACCT_NUM_UNLINK}
    run keyword and ignore error  click element  ${AUTOPAY_POPUP}
    sleep  2s
    click element  ${hh_ACCT_NUM_UNLINK}

    wait until page contains  You're about to unlink this Account.
    click element  ${POPUP_UNLINK}

    wait until page contains  This Account has been unlinked
    sleep  4s
    page should contain  This Account has been unlinked from your Frontier ID

























