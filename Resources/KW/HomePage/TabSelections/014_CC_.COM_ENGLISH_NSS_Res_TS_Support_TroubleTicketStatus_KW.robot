*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Support/support.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Click on the Tab selections as follows: Support> Trouble Ticket Status
    support.Mouse over on Support Tab
    support.Select Trouble Ticket Status option

Verify URL changes to
    [Arguments]  ${TROUBLE_TICKET_STATUS_URL}

    log  ${TROUBLE_TICKET_STATUS_URL}

    Encode String To Bytes  ${TROUBLE_TICKET_STATUS_URL}  ASCII

    location should be  ${TROUBLE_TICKET_STATUS_URL}
