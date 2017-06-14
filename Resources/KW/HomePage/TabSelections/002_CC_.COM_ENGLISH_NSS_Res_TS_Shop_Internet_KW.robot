*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Shop/shop.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC02

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Click on the Tab selections as follows: Shop > Internet
    sleep  2s
    shop.Mouse over on Shop Tab
    shop.Select Internet option

Verify URL changes to Internet
    ${SHOP_INTERNET_URL}  read_excel_data_by_cell_name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${SHOP_INTERNET_URL}

    Encode String To Bytes  ${SHOP_INTERNET_URL}  ASCII

    wait until page contains  Internet Services

    location should be  ${SHOP_INTERNET_URL}
