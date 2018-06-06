*** Settings ***
Library  Selenium2Library  60
Resource  ../../Resources/KW/Reg/002_CC_REG_RES_FCOM_Man_SignIn_ExistingFrontierID_KW.robot
Resource  ../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

002_CC_REG_RES_FCOM_Man_SignIn_ExistingFrontierID

    User launch Ftr.com application using URL

#    Select the Sign In link
#
#    Enter User name and Password and Select Sign In button
#
#    Verify user launches into Self Service Portal successfully
