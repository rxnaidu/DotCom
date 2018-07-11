*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Shop > Moving
    Mouse over on Shop Tab
    Select Moving option

Verify URL changes to Moving page
    wait until page contains  home
    page should contain  New home
#    ${Shop_Moving_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SHOP_MOVING_URL}
#    Encode String To Bytes  ${Shop_Moving_Url}  ASCII
#    wait until page contains  Chat
#    location should be  ${Shop_Moving_Url}
