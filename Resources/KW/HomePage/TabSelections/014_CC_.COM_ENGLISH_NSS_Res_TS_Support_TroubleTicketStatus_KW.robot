*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/Support.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC14

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Click on the Tab selections as follows: Support> Trouble Ticket Status
    support.Mouse over on Support Tab
    support.Select Trouble Ticket Status option

Verify URL changes to Trouble Ticket Status
    wait until page contains  Ticket Status
    page should contain  Ticket Status
#    ${Trouble_Ticket_Status_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${TROUBLE_TICKET_STATUS_URL}
#    Encode String To Bytes  ${TROUBLE_TICKET_STATUS_URL}  ASCII
#    wait until page contains  Ticket Status
#    location should be  ${TROUBLE_TICKET_STATUS_URL}
