*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the Mobile App option from the Support Category Drop down
    Mouse over on My Account Tab
    Select My Frontier Mobile App option

Validate MyFrontier Mobole App Landing Page
    wait until page contains  Mobile App
    page should contain  Mobile App

Select the new Multi-Language Toggle on the MyFrontier Mobile App Landing page
    Select Multi-Language Toggle for Spanish Language

Validate page display in Spanish instead of English
    Verify Toggle display English