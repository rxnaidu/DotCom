*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/Bundles/009_CC_.COM_NSS_Res_Shop_Bundles_FIOSBundleProductPage_ChatRedesign_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Shop Bundles Validations
    User launch Ftr.com application using URL

    Click the location module and enter FIOS Market zip code 46801 and Click Check Availability

    Select the Bundle option from the Shop Category Drop down

    Select the floating Chat ICON and validate Overlay display