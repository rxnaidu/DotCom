*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/Bundles/002_CC_.COM_NSS_Res_Shop_Bundles_LanguageToggleFunctionalityonBundleProductPage_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
Shop Bundles Validations
    User launch Ftr.com application using URL

    Enter In Territory Copper Zip Code (14626) in the Zip Code Field and Select the Check Availability Button

    Select the Bundle option from the Shop Category Drop down

    Select Language Toggle in Bundle Page

    Validate Bundle Product Page should now display in the selected language


