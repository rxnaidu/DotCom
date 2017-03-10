*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/MyAccount/myAccount.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

User mouse over on My Account Tab
    myAccount.Mouse over on My Account Tab

Verify all subtabs are displayed under My Account Tab
    myAccount.Verify My Account sub tabs are displayed
