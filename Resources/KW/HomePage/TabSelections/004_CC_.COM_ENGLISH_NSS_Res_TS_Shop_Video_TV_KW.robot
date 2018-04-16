*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC04

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Click on the Tab selections as follows: Shop > Video/TV
    Mouse over on Shop Tab
    Select Video/TV option

Verify URL changes to Video/TV
    wait until page contains  TV
    page should contain  Frontier TV
#    ${SHOP_VIDEO_URL}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SHOP_VIDEO_URL}
#    Encode String To Bytes  ${SHOP_VIDEO_URL}  ASCII
#    sleep  3s
#    location should be  ${SHOP_VIDEO_URL}
