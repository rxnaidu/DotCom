*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/DE/017_CC_.COM_NSS_Res_Shop_DE_Challenger_CopperZips-InternetLandingPageNational_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
Digital Essentials Validations
    User launch Ftr.com application using URL

    Change location to copper zip code

    Select Frontier Secure from Shop Drop down

    Validate National Offer Page is visible




