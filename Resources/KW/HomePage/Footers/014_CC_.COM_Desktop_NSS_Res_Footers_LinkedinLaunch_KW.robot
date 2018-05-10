*** Settings ***
Library  Selenium2Library
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC14
${LINKEDIN_TAB_TITLE}  LinkedIn: Log In or Sign Up

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Navigate to bottom of the Footer home page and click: LinkedIn
    Select LinkedIn option from Footer

Move to LinkedIn window Tab
    sleep  6s
    @{titles}  get window titles
    @{window_names}  Get Window Names
    select window  ${LINKEDIN_TAB_TITLE}

Verify URL changes to LinkedIn Page
    wait until page contains  First name
    page should contain  First name
