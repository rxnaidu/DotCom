*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/HomePageBus.robot
Resource  ../../../Properties/MultiLang_PR.robot

*** Variables ***
${TESTCASE_NO}  TC05

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

User clicks Business Tab
    Select Business Tab

Verify Business home page is displayed
    Verify Business home Page

Validate Small Business prodcuts link is displayed
    page should contain  Small Business
