*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Shop/shop.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC04

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Click on the Tab selections as follows: Shop > Video/TV
    shop.Mouse over on Shop Tab
    shop.Select Video/TV option

Verify URL changes to Video/TV
    ${SHOP_VIDEO_URL}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SHOP_VIDEO_URL}

    Encode String To Bytes  ${SHOP_VIDEO_URL}  ASCII

    wait until page contains  Frontier TV & Video Services

    location should be  ${SHOP_VIDEO_URL}
