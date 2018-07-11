*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../../Resources/KW/HomePage/Shop/Internet/Multi_Language/001_CC_.COM_NSS_Res_Shop_NET_Multi-Language_ToggleDisplayonInternetProductPage_KW.robot
Resource  ../../../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Internet Multi_Language
    User launch Ftr.com application using URL

    Select Interner from Shop Tab

    Change location to zip code1

    Validate Multi-Language Toggle on Internet page

#    Select Learn More button for Simply BB Max Product and Validdate Multi-Language Toggle
#
#    Select Learn More button for Simply BB Ultimate Product and Validdate Multi-Language Toggle

    Select Learn More button for BB Ultra Product and Validdate Multi-Language Toggle

    Change location to zip code2

    Select Learn More button for Simply FIOS 100/100 Product and Validdate Multi-Language Toggle

#    Select Learn More button for Simply FIOS 30/30 Product and Validdate Multi-Language Toggle
#
    Select Learn More button for Simply FIOS 50/50 Product and Validdate Multi-Language Toggle