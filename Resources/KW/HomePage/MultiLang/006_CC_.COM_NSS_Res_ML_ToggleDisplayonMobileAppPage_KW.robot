*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/MultiLang_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select Mobile App option from My Account Tab
    Mouse over on My Account Tab
    Select My Frontier Mobile App option

Validate the display of the Multi-Language Toggle on the MyFrontier Mobile App Landing page
    page should contain  Español

