*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Shop/shop.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

User mouse over on Shop Tab
    shop.Mouse over on Shop Tab

Verify all sub tabs are displayed under Shop Tab
    shop.Verify Shop sub tabs are displayed