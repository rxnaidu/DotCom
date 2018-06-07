*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30
Resource  ../../../Resources/KW/HomePage/Headers/06_shopTab_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

06_shopTab

    User launch Ftr.com application using URL

    User mouse over on Shop Tab

    Verify all sub tabs are displayed under Shop Tab