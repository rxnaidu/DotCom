*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Navigate to bottom of the Footer home page and click: Frontier Sites > Get Vantage
    homePage.Select Get Vantage option from Footer

Verify URL changes to Get Vantage Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Secure
    homePage.Select Frontier Secure option from Footer

Verify URL changes to Frontier Secure Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier BusinessEdge
    homePage.Select Frontier BusinessEdge option from Footer

Verify URL changes to Frontier BusinessEdge Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Games
    homePage.Select Frontier Games option from Footer

Verify URL changes to Frontier Games Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier WI-FI
    homePage.Select Frontier WI-FI option from Footer

Verify URL changes to Frontier WI-FI Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Wholesale
    homePage.Select Wholesale option from Footer

Verify URL changes to Wholesale Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Yahoo Portal
    homePage.Select Frontier Yahoo Portal option from Footer

Verify URL changes to Frontier Yahoo Portal Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > Referral Program
    homePage.Select Referral Program option from Footer

Verify URL changes to Referral Program Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Frontier Sites > BusinessEdge Partner Program
    homePage.Select BusinessEdge Partner Program option from Footer

Verify URL changes to BusinessEdge Partner Program Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

