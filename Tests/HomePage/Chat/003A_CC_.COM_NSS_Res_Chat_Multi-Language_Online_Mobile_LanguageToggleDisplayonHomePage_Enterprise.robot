*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/003_CC_.COM_NSS_Res_Multi-Language_OnlineAndMobile_LanguageToggleDisplayonHomePage_Enterprise_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    User clicks Business Tab

    Verify Business home page is displayed