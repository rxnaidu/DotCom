*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/BUS/Landing/homeBus.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC04

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

User clicks Business Tab
    homePage.Select Business Tab

Verify Business home page is displayed
    homeBus.Verify Business home Page

User clicks back button
    go back

Verify Residential Home Page is displayed
    homePage.Verify Residential home page