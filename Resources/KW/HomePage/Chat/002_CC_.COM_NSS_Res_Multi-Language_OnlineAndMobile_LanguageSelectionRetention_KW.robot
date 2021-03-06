*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC02

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the new Multi-Language Toggle on the Residential Home page
    Select Multi-Language Toggle for Spanish Language

Home page should display in Spanish and toggle display 'English'
    Verify Toggle display English

Launch new Browser session and navigate to qatxx.frontier.com
#    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
#    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}
#    select window  https://qat02.frontier.com
    Press Key    https://qat02.frontier.com    \\20

Validate the display of the Frontier.com Residential Home page
    Verify Toggle display English