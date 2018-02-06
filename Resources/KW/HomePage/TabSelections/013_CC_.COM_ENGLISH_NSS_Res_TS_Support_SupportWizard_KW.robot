*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Support/support.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC13

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Click on the Tab selections as follows: Support> Support Wizard
    support.Mouse over on Support Tab
    support.Select Support Wizard option

Verify URL changes to Support Wizard
    wait until page contains  Support Wizard
    page should contain  Support Wizard
#    ${Support_Wizard_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SUPPORT_WIZARD_URL}
#    Encode String To Bytes  ${Support_Wizard_Url}  ASCII
#    WAIT UNTIL PAGE CONTAINS  Support Wizard
#    location should be  ${Support_Wizard_Url}
