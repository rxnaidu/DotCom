*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Support/support.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Click on the Tab selections as follows: Support> Order Status
    support.Mouse over on Support Tab
    support.Select Order Status option

Verify URL changes to
    [Arguments]  ${ORDER_STATUS_URL}

    log  ${ORDER_STATUS_URL}

    Encode String To Bytes  ${ORDER_STATUS_URL}  ASCII

    location should be  ${ORDER_STATUS_URL}
