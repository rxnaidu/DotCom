*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/Bundles/001_CC_.COM_NSS_Res_Shop_Bundles_Multi-LanguageToggleDisplayonBundleProductPage_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
Shop Bundles Validations
    User launch Ftr.com application using URL

    Select the Bundle option from the Shop Category Drop down

    Enter In Territory Copper Zip Code (14626) in the Zip Code Field and Select the Check Availability Button

    Validate the display of the Multi-Language Toggle Geolocation indicator on the Bundle Product page


