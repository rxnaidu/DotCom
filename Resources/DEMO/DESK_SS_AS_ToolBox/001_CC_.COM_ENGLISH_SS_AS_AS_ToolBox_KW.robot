*** Settings ***
Library  Selenium2Library  60
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/RES/AccountSummary/accountSummary.robot

*** Variables ***

*** Keywords ***

User launch Ftr.com application using URL
    loginPage.Load

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    [Arguments]  ${USERNAME_INP}  ${PASSWORD_INP}

     homePage.User Sign In  ${USERNAME_INP}  ${PASSWORD_INP}

     #The Account Summary Page should display  ???


Select Account Summary option under Account Summary

    #Select Account Summary option from the drop down
    accountSummary.Select Account Summary link

    #The Account Status and Information should display on the Account Summary Screen  ???

Verify the display of the My Services Section under AccountSummary

    #My Services should display on the AccountSummary Window
    page should contain  My Services

TR2.1- Validate when a Core Product is available on the account
    accountSummary.validate Internet and Phone products icons

TR4.1- Verify Frontier.com to display Billing Product Name
    page should contain  Broadband Max
    page should contain  Single Party Residence Service

TR4.2- Verify For products without a SKU
    page should contain  Internet
    page should contain  Phone