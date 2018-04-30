*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/Bundles/007_CC_.COM_NSS_Res_Shop_Bundles_DISHBundleCTFProductPage_ChatRedesign_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
Shop Bundles Validations
    User launch Ftr.com application using URL

    Click the location module and enter DISH CTF Market zip code 76804 and Click Check Availability

    Select the Bundle option from the Shop Category Drop down

    Select the floating Chat ICON and validate Overlay display