*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Navigate to bottom of the Footer home page and click: Corporate > About Us
    homePage.Select About Us option from Footer

Verify URL changes to About Us Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Investor Relations
    homePage.Select Investor Relations option from Footer

Verify URL changes to Investor Relations Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > News
    homePage.Select News option from Footer

Verify URL changes to News Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Careers
    homePage.Select Careers option from Footer

Verify URL changes to Careers Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Suppliers
    homePage.Select Suppliers option from Footer

Verify URL changes to Suppliers Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Pressroom
    homePage.Select Pressroom option from Footer

Verify URL changes to Pressroom Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: Corporate > Public Inspection Files
    homePage.Select Public Inspection Files option from Footer

Verify URL changes to Public Inspection Files Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}


