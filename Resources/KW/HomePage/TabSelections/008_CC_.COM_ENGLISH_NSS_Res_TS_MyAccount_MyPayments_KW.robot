*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/RES/MyAccount/myAccount.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Click on the Tab selections as follows: My Account> My Payments
    myAccount.Mouse over on My Account Tab
    myAccount.Select My Payments option

Verify Sign In Screen displays fields and buttons
    myAccount.Verify Sign In, Cancel, Username, Password fields