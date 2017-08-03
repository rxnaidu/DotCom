*** Settings ***
Library  Selenium2Library  45

Resource  ../../Resources/KW/Reg/007_CC_REG_RES_FCOM_MyProfile-UnLinkAccount_KW.robot
Resource  ../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

007_CC_REG_RES_FCOM_MyProfile-UnLinkAccount

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Select close on auto payment popup

    Verify 17 digit Account Number displayed on Account Summary page

    Select My Profile from the 2nd Tier Nav Tab

    Validate Frontier ID, Password & Email Notifications Section data

    Click Unlink for an account number













