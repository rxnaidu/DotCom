*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/WHOL/Landing/homeWhol.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

User clicks Wholesale Tab
    homePage.Select Wholesale Tab

Verify Wholesale home page is displayed
    homeWhol.Verify Wholesale home Page

User clicks back button
    go back

Verify Residential Home Page is displayed
    homePage.Verify Residential home page