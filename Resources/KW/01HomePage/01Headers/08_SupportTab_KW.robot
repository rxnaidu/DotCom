*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Support/support.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

User mouse over on Support Tab
    support.mouse over on support tab

Verify all subtabs are displayed under Support Tab
    support.verify support sub tabs are displayed

