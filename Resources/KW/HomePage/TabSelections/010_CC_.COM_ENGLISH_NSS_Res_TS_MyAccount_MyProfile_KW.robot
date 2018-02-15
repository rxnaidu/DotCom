*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/MyAccount.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC10

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Click on the Tab selections as follows: My Account> My Profile
    myAccount.Mouse over on My Account Tab
    myAccount.Select My Profile option

Verify URL changes to MyProfile
    wait until page contains  Sign In
    page should contain  Sign In
#    ${MyProfile_url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${MY_PROFILE_URL}
#    Encode String To Bytes  ${MyProfile_url}   ASCII
#    wait until page contains  Sign In
#    location should be  ${MyProfile_url}
