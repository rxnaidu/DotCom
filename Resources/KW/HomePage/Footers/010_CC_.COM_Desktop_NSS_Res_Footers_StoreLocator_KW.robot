*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Navigate to bottom of the Footer home page and click: Store Locator
    homePage.Select Store Locator option from Footer

Verify URL changes to Store Locator Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}