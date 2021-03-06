*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC02

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Shop > Internet
    sleep  2s
    Mouse over on Shop Tab
    Select Internet option

Verify URL changes to Internet
    wait until page contains  Internet
    page should contain   Internet speed
#    ${SHOP_INTERNET_URL}  read_excel_data_by_cell_name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SHOP_INTERNET_URL}
#    Encode String To Bytes  ${SHOP_INTERNET_URL}  ASCII
#    wait until page contains  Internet Services
#    location should be  ${SHOP_INTERNET_URL}
