*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Headers/03_SignInWindow_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${USERNAME_INP}  ftrfrank1+automation@gmail.com
${PASSWORD_INP}  Frontier999

*** Test Cases ***

03_SignInWindow.robot

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button  ${USERNAME_INP}  ${PASSWORD_INP}

    Select Sign Out from righ corner of the screen

    Verify User launch back to Hopme page defaulting to Residential Tab