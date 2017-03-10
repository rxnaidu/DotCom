*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Enter 'Vantage' and click on the Search icon
    homePage.Search Text  Vantage

Verify search page is displayed with results
    homePage.Verify Search Text Results  Vantage

Click on the Residential tab from the top black navigation bar
    homePage.Select Residential Tab

Verify User is now launched back to Home page.
    homePage.Verify Residential Home page