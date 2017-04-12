*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Navigate to bottom of the Footer home page and click: Support> Contact Us
    homePage.Select Contact Us option from Footer

Verify URL changes to Contact Us Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Help Center
    homePage.Select Help Center option from Footer

Verify URL changes to Help Center Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Order Status
    homePage.Select Order Status option from Footer

Verify URL changes to Order Status Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Trouble Ticket Status
    homePage.Select Trouble Ticket Status option from Footer

Verify URL changes to Trouble Ticket Status Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Support Wizard
    homePage.Select Support Wizard option from Footer

Verify URL changes to Support Wizard Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support > Test Your Speed
    homePage.Select Test Your Speed option from Footer

Verify URL changes to Test Your Speed Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Support> Video Gallery
    homePage.Select Video Gallery option from Footer

Verify URL changes to Video Gallery Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}


