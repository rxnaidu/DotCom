*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Headers/03_SignInWindow_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

03_SignInWindow.robot

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Verify Login page

#    Select Sign Out from righ corner of the screen
#
#    Verify User launch back to Hopme page defaulting to Residential Tab