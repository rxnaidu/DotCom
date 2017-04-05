*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/WHOL/Landing/homeWhol.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

User clicks Wholesale Tab
    homePage.Select Wholesale Tab

Verify Wholesale home page is displayed
    homeWhol.Verify Wholesale home Page

User clicks back button
    go back

Verify Residential Home Page is displayed
    homePage.Verify Residential home page