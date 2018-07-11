*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/DE/013_CC_.COM_NSS_Res_Shop_DE_LanguageToggleFunctionalityonFrontierSecurePTSProduct_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Digital Essentials Validations
    User launch Ftr.com application using URL

    Change location to zip code 14626

    Select Frontier Secure from Shop Drop down

    Select Learn More Button under Frontier Premium Technical Support Product

    Validate Multi-Language Toggle

    Click Language Toggle and validate


