*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/MultiLang/002_CC_.COM_NSS_Res_ML_LanguageSelectionRetention_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations
    User launch Ftr.com application using URL

    Select the new Multi-Language Toggle on the Residential Home page