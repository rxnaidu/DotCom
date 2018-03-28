*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/HomeRes.robot
Resource  ../../../PO/RES/MyAccount.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC06

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Mobile App option from the Support Category Drop down
    myAccount.Mouse over on My Account Tab
    myAccount.Select My Frontier Mobile App option

Validate MyFrontier Mobole App Landing Page
    wait until page contains  Mobile App
    page should contain  Mobile App

Select the new Multi-Language Toggle on the MyFrontier Mobile App Landing page
    Select Multi-Language Toggle for Spanish Language

Validate page display in Spanish instead of English
    Verify Toggle display English