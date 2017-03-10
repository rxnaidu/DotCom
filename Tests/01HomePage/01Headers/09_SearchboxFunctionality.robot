*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60
Resource  ../../../Resources/KW/01HomePage/01Headers/09_SearchboxFunctionality_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***

09_SearchboxFunctionality

    User launch Ftr.com application using URL

    Enter 'Vantage' and click on the Search icon

    Verify search page is displayed with results

    Click on the Residential tab from the top black navigation bar

    Verify User is now launched back to Home page.

