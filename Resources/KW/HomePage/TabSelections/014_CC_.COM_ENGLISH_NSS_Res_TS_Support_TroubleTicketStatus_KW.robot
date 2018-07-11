*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC14

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Support> Trouble Ticket Status
    Mouse over on Support Tab
    Select Trouble Ticket Status option

Verify URL changes to Trouble Ticket Status
    wait until page contains  Ticket Status
    page should contain  Ticket Status
#    ${Trouble_Ticket_Status_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${TROUBLE_TICKET_STATUS_URL}
#    Encode String To Bytes  ${TROUBLE_TICKET_STATUS_URL}  ASCII
#    wait until page contains  Ticket Status
#    location should be  ${TROUBLE_TICKET_STATUS_URL}
