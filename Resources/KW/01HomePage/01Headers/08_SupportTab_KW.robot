*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Support/support.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

