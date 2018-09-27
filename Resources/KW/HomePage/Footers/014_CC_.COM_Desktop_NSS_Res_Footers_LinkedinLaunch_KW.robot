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
#${LINKEDIN_TAB_TITLE}  Frontier Communications | LinkedIn

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Navigate to bottom of the Footer home page and click: LinkedIn
    Select LinkedIn option from Footer

Move to LinkedIn window Tab
    sleep  6s
    @{titles}  get window titles
    select window  ${LINKEDIN_TAB_TITLE}

Verify URL changes to LinkedIn Page
    wait until page contains  LinkedIn
    page should contain  Sign
