*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Support/support.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Click on the Tab selections as follows: Support> Help Center
    support.Mouse over on Support Tab
    support.Select Help Center option

Verify URL changes to
    [Arguments]  ${HELP_CENTER_URL}

    log  ${HELP_CENTER_URL}

    Encode String To Bytes  ${HELP_CENTER_URL}  ASCII

    location should be  ${HELP_CENTER_URL}
