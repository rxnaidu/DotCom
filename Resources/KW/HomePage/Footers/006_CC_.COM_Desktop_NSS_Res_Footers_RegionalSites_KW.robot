*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Navigate to bottom of the Footer home page and click: Regional Sites > Central
    homePage.Select Central option from Footer

Verify URL changes to Central Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > East
    homePage.Select East option from Footer

Verify URL changes to East Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > Mid-South
    homePage.Select Mid-South option from Footer

Verify URL changes to Mid-South Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > National-IL,IA,MN,NE,UT
    homePage.Select National-IL,IA,MN,NE,UT option from Footer

Verify URL changes to National-IL,IA,MN,NE,UT Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > National-ID,MT
    homePage.Select National-ID,MT option from Footer

Verify URL changes to National-ID,MT Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > South
    homePage.Select South option from Footer

Verify URL changes to South Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > Southeast
    homePage.Select Southeast option from Footer

Verify URL changes to Southeast Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Regional Sites > West
    homePage.Select West option from Footer

Verify URL changes to West Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}



