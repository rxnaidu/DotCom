*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot

*** Keywords ***
User launch Ftr.com application using URL
    loginPage.Load

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    [Arguments]  ${Username_Inp}  ${Password_Inp}

    homePage.User Sign In  ${Username_Inp}  ${Password_Inp}

Select Sign Out from righ corner of the screen
    sleep  5s
#    click element  xpath=//div[@id='summary']/h4
    homePage.Sign Out

Verify User launch back to Hopme page defaulting to Residential Tab
    homePage.Verify Residential home page