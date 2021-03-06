*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC03

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Shop > Phone
    Mouse over on Shop Tab
    Select Phone option

Verify URL changes to Phone
    wait until page contains  Phone
    page should contain  Home Phone
#    ${SHOP_PHONE_URL}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SHOP_PHONE_URL}
#    Encode String To Bytes  ${SHOP_PHONE_URL}  ASCII
#    location should be  ${SHOP_PHONE_URL}
