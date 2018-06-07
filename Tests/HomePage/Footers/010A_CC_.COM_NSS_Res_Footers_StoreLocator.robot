*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/010_CC_.COM_Desktop_NSS_Res_Footers_StoreLocator_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

010_CC_.COM_Desktop_NSS_Res_Footers_StoreLocator

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Store Locator

    Verify URL changes to Store Locator Page