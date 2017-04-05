*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/Shop/shop.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Click on the Tab selections as follows: Shop > Bundles
    shop.Mouse over on Shop Tab
    shop.Select Phone option

Verify URL changes to
    [Arguments]  ${SHOP_PHONE_URL}

    log  ${SHOP_PHONE_URL}

    Encode String To Bytes  ${SHOP_PHONE_URL}  ASCII

    location should be  ${SHOP_PHONE_URL}
