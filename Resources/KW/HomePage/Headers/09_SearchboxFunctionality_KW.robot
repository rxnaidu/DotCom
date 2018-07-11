*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/Common.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC09

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Enter 'Vantage' and click on the Search icon
    Search Text  Vantage

Verify search page is displayed with results
    Verify Search Text Results  Vantage

Click on the Residential tab from the top black navigation bar
    Select Residential Tab

Verify User is now launched back to Home page.
    Verify Residential Home page