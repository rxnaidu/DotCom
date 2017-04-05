*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/MyAccount/myAccount.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Click on the Tab selections as follows: My Account> MyFrontier Mobole App
    myAccount.Mouse over on My Account Tab
    myAccount.Select My Frontier Mobile App option

Verify URL changes to
    [Arguments]  ${MOBILE_APP_URL}

    log  ${MOBILE_APP_URL}

    Encode String To Bytes  ${MOBILE_APP_URL}  ASCII

    location should be  ${MOBILE_APP_URL}
