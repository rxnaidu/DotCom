*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Chat/SMC/04_CC_.COM_NSS_Res_Chat_SMC_DisplayofNewSocialMediaChatLandingPage_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Setup  Begin Web Test Chat SMC
Test Teardown  End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Validate the display of the URL Generator

    Enter Name Email and SM Case ID and Generate the New URL

    Validate Encrypted URL is generated

    Navigate to the URL prior to 120 Minutes

    Validate the functionality of the items on the page
