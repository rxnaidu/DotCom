*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Navigate to bottom of the Footer home page and click: Shop > Bundles
    homePage.Select Bundle option from Footer

Verify URL changes to Bundles Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Internet
    homePage.Select Internet option from Footer

Verify URL changes to Internet Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Phone
    homePage.Select Phone option from Footer

Verify URL changes to Phone Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Video/Tv
    homePage.Select Video/TV option from Footer

Verify URL changes to Video/Tv Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Degital Essentials
    homePage.Select Degital Essentials option from Footer

Verify URL changes to Degital Essentials Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Moving
    homePage.Select Moving option from Footer

Verify URL changes to Moving Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Shop > Discount Programes
    homePage.Select Discount Programes option from Footer

Verify URL changes to Discount Programes Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}



