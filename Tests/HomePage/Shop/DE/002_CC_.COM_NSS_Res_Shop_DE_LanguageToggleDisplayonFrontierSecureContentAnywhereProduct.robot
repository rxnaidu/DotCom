*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/DE/002_CC_.COM_NSS_Res_Shop_DE_LanguageToggleDisplayonFrontierSecureContentAnywhereProduct_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
Digital Essentials Validations
    User launch Ftr.com application using URL

    Change location to zip code 14626

    Select Frontier Secure from Shop Drop down

    Select Learn More Button under Content Anywhere Product

    Validate Multi-Language Toggle


