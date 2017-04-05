*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Support/support.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Click on the Tab selections as follows: Support> Support Wizard
    support.Mouse over on Support Tab
    support.Select Support Wizard option

Verify URL changes to
    [Arguments]  ${SUPPORT_WIZARDURL}

    log  ${SUPPORT_WIZARDURL}

    Encode String To Bytes  ${SUPPORT_WIZARDURL}  ASCII

    location should be  ${SUPPORT_WIZARDURL}
