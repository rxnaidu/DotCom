*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/BUS/Landing/homeBus.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

User clicks Business Tab
    homePage.Select Business Tab

Verify Business home page is displayed
    homeBus.Verify Business home Page

User clicks back button
    go back

Verify Residential Home Page is displayed
    homePage.Verify Residential home page