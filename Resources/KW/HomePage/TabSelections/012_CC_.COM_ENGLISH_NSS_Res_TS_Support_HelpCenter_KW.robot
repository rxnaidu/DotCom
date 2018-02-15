*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/Support.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC12

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Click on the Tab selections as follows: Support> Help Center
    support.Mouse over on Support Tab
    support.Select Help Center option

Verify URL changes to Help Center
    wait until page contains  Support Topics
    page should contain  Support Topics

#    ${Help_Center_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${HELP_CENTER_URL}
#    Encode String To Bytes  ${Help_Center_Url}  ASCII
#    wait until page contains  Help Center
#    location should be  ${Help_Center_Url}
