*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC15

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Support> Order Status
    Mouse over on Support Tab
    Select Order Status option

Verify URL changes to Order Status
    wait until page contains  Order Status
    page should contain  Order Status
#    ${Order_Status_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ORDER_STATUS_URL}
#    Encode String To Bytes  ${Order_Status_Url}  ASCII
#    location should be  ${Order_Status_Url}
