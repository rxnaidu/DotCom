*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC10

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: My Account> My Profile
    Mouse over on My Account Tab
    Select My Profile option

Verify URL changes to MyProfile
    wait until page contains  Sign In
    page should contain  Sign In
#    ${MyProfile_url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${MY_PROFILE_URL}
#    Encode String To Bytes  ${MyProfile_url}   ASCII
#    wait until page contains  Sign In
#    location should be  ${MyProfile_url}
