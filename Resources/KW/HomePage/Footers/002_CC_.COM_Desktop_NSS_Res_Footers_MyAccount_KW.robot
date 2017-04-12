*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Navigate to bottom of the Footer home page and click: My Account > Pay Bills
    homePage.Select Pay Bill option from Footer

Verify URL changes to Pay Bills Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Internet
    homePage.Select Pay Bill option from Footer

Verify URL changes to Internet Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > Check Email
    homePage.Select Check Email option from Footer

Verify URL changes to Check Email Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > Manage Account
    homePage.Select Manage Account option from Footer

Verify URL changes to Manage Account Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > MyFrontier App
    homePage.Select MyFrontier App option from Footer

Verify URL changes to MyFrontier App Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > Watch TV
    homePage.Select Watch TV option from Footer

Verify URL changes to Watch TV Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > Enterprise Accounts
    homePage.Select Enterprise Accounts option from Footer

Verify URL changes to Moving Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}




