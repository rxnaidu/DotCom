*** Settings ***
Library  Selenium2Library  30
Resource  ../../../Resources/KW/HomePage/MultiLang/003_CC_.COM_NSS_Res_ML_ToggleDisplayonHomePage_Enterprise_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Multi Language Features

    User launch Ftr.com application using URL

    User clicks Business Tab

    Validate the Multi-Language Toggle DOES NOT display on the Business Home page
