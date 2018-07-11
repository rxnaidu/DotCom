*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC11

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: My Account> MyFrontier Mobole App
    Mouse over on My Account Tab
    Select My Frontier Mobile App option

Verify URL changes to MyFrontier Mobole App
    wait until page contains  Mobile App
    page should contain  Mobile App
#    ${Mobile_App_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${MOBILE_APP_URL}
#    Encode String To Bytes  ${Mobile_App_Url}  ASCII
#    wait until page contains  The MyFrontier Mobile App
#    location should be  ${Mobile_App_Url}
