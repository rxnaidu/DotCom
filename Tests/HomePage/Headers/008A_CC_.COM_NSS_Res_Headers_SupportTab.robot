*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30
Resource  ../../../Resources/KW/HomePage/Headers/08_SupportTab_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

008_CC_.COM_ENGLISH_NSS_Res_Headers_SupportTab

    User launch Ftr.com application using URL

    User mouse over on Support Tab

    Verify all subtabs are displayed under Support Tab