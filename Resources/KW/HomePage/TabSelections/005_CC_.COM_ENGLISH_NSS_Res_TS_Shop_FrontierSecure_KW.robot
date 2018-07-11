*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Shop > Frontier Secure
    Mouse over on Shop Tab
    Select Frontier Secure option

Verify URL changes to Frontier Secure
    wait until page contains  Frontier Secure
    page should contain  Frontier Secure
#    ${SHOP_DEGITAL_ESSENTIALS_URL}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SHOP_DEGITAL_ESSENTIAL_URL}
#    Encode String To Bytes  ${SHOP_DEGITAL_ESSENTIALS_URL}  ASCII
#    wait until page contains  Frontier Secure
#    location should be  ${SHOP_DEGITAL_ESSENTIALS_URL}

