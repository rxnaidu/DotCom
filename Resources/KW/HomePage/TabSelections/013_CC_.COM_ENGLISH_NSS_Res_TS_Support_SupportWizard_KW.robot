*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC13

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Support> Support Wizard
    Mouse over on Support Tab
    Select Support Wizard option

Verify URL changes to Support Wizard
    wait until page contains  Support Wizard
    page should contain  Support Wizard
#    ${Support_Wizard_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SUPPORT_WIZARD_URL}
#    Encode String To Bytes  ${Support_Wizard_Url}  ASCII
#    WAIT UNTIL PAGE CONTAINS  Support Wizard
#    location should be  ${Support_Wizard_Url}
