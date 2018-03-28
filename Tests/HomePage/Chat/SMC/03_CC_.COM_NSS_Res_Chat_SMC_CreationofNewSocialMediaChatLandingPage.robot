*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Chat/SMC/01_CC_.COM_NSS_Res_Chat_SMC_URLGenerator_KW.robot
Resource  ../../../../Resources/PO/Common.robot

#Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Validate the display of the URL Generator

    Enter Name Email and SM Case ID and Generate the New URL

    Validate Encrypted URL is generated

    Navigate to the URL prior to 120 Minutes
#
#    Validate the display of the New SMC Landing page
#
#    Validate the functionality of the items on the page


