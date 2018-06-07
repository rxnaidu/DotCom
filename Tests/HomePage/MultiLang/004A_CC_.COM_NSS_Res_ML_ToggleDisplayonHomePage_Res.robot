*** Settings ***
Library  Selenium2Library  30
Resource  ../../../Resources/KW/HomePage/MultiLang/004_CC_.COM_NSS_Res_ML_ToggleDisplayonHomePage_Res_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

Multi Language Features

    User launch Ftr.com application using URL

    Validate the display of the Multi-Language Toggle on the Residential Home page