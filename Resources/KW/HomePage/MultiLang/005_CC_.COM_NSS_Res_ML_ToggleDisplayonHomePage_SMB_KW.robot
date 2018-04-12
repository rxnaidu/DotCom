*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/HomeRes.robot
Resource  ../../../PO/BUS/HomeBus.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

User clicks Business Tab
    Select Business Tab

Verify Business home page is displayed
    homeBus.Verify Business home Page

Validate Small Business prodcuts link is displayed
    page should contain  Small Business
