*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/DE/022_CC_.COM_NSS_Res_Shop_DE_Leader_CopperZips-FrontierSecure_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Digital Essentials Validations
    User launch Ftr.com application using URL

    Change location to copper Leader zip code

    Select Frontier Secure from Shop Drop down

    Validate Frontier Secure page


