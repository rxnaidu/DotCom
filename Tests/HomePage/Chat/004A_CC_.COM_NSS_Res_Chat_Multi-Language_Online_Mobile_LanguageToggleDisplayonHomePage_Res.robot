*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/004_CC_.COM_NSS_Res_Multi-Language_OnlineAndMobile_LanguageToggleDisplayonHomePage_Res_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Validate the display of the new Multi-Language Toggle on the Residential Home page