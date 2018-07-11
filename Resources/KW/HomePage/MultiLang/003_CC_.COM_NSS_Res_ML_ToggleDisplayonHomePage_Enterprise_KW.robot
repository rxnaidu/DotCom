*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/HomePageBus.robot
Resource  ../../../Properties/MultiLang_PR.robot

*** Variables ***
${TESTCASE_NO}  TC03

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

User clicks Business Tab
    Select Business Tab
    Verify Business home Page

Validate the Multi-Language Toggle DOES NOT display on the Business Home page
    page should not contain  Español
    page should not contain  English


