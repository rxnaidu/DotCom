*** Settings ***
Library  Selenium2Library  90

Resource  ../../Resources/KW/Reg/006_CC_REG_RES_FCOM_Man_MyProfile-LinkAccount_KW.robot
Resource  ../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

006_CC_REG_RES_FCOM_Man_MyProfile-LinkAccount

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Select close on auto payment popup

#    Verify 17 digit Account Number displayed on Account Summary page

    Select My Profile from the 2nd Tier Nav Tab

    Validate Frontier ID, Password & Email Notifications Section data

    Click Link An Account

    Select Billing Account Number option and enter account number

    Select Frontier Billing Account PIN and continue

#    validate linked account number












