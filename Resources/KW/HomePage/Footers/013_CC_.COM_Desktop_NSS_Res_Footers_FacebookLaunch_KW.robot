*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
*** Variables ***
${FACEBOOK_TAB_TITLE}  Security Check Required
*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Navigate to bottom of the Footer home page and click: Facebook
    homePage.Select Facebook option from Footer

Move to Facebook window Tab
    sleep  4s
    @{titles}  get window titles
    select window  ${FACEBOOK_TAB_TITLE}

Verify URL changes to Facebook Page
    [Arguments]  ${EXPECTED_URL}
    Verify currnt URL  ${EXPECTED_URL}