*** Settings ***
Library  Selenium2Library  30
Resource  ../../../Resources/KW/HomePage/MultiLang/005_CC_.COM_NSS_Res_ML_ToggleDisplayonHomePage_SMB_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

Multi Language Features

    User launch Ftr.com application using URL

    User clicks Business Tab

    Verify Business home page is displayed

    Validate Small Business prodcuts link is displayed