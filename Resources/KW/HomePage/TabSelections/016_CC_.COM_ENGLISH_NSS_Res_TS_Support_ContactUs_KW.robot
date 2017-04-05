*** Settings ***
Library  Selenium2Library  30
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Support/support.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Click on the Tab selections as follows: Support> Contact Us
    support.Mouse over on Support Tab
    support.Select Contact Us option

Verify URL changes to
    [Arguments]  ${CONTACT_US_URL}

    log  ${CONTACT_US_URL}

    Encode String To Bytes  ${CONTACT_US_URL}  ASCII

    location should be  ${CONTACT_US_URL}
