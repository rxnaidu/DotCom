*** Settings ***
Library  Selenium2Library  30

Resource  ../../Resources/KW/REG/002_CC_REG_RES_FCOM_Man_SignIn_ExistingFrontierID_KW.robot
Resource  ../../Resources/PO/Common/common.robot

#Test Setup  Common.Begin Web Test
#Test Teardown  Common.End Web Test

*** Test Cases ***

002_CC_REG_RES_FCOM_Man_SignIn_ExistingFrontierID

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Verify user launches into Self Service Portal successfully
