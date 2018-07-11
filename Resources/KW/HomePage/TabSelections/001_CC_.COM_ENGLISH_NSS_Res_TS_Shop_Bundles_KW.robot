*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../PO/Common.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC01

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Shop > Bundles
    Mouse over on Shop Tab
    Select Bundle option

Verify URL changes to Bundles
    wait until page contains  bundle
    page should contain  bundle
#    ${Shop_Bundle_url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SHOP_BUNDLE_URL}
#    Encode String To Bytes  ${Shop_Bundle_url}  ASCII
#    location should be  ${Shop_Bundle_url}
