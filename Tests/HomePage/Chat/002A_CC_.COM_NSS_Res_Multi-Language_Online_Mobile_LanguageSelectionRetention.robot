*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/002_CC_.COM_NSS_Res_Multi-Language_OnlineAndMobile_LanguageSelectionRetention_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Select the new Multi-Language Toggle on the Residential Home page

#    Launch new Browser session and navigate to qatxx.frontier.com
#
#    Validate the display of the Frontier.com Residential Home page

