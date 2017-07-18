*** Settings ***
Library  Selenium2Library  30

#Resource  ../../Resources/KW/Reg/002_CC_REG_RES_FCOM_Man_SignIn_ExistingFrontierID_KW.robot
#Resource  ../../Resources/PO/Common/common.robot

#Test Teardown  Common.End Web Test

*** Test Cases ***

Log into FTR Mobility Appliation
    User launch Ftr.com application using URL
#    Select the Sign In link
#    Enter User name and Password and Select Sign In button
#    Verify user launches into Self Service Portal successfully

*** Keywords ***
User launch Ftr.com application using URL
    open browser  https://mobile-apiqat03.frontier.com  Chrome
    set window size  1024  768

    wait until page contains  Username
    wait until element is enabled  id=login-username
    input text  id=login-username  ftrfrank1+automationqat02@gmail.com
    input password  id=login-password  Password123
    wait until element is visible  css=[data-ng-click="onLogin()"]
    click element  css=[data-ng-click="onLogin()"]




Select the Sign In link

Enter User name and Password and Select Sign In button

Verify user launches into Self Service Portal successfully