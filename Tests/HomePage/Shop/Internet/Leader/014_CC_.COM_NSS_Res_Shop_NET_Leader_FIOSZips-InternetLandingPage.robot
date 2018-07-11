*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../../Resources/KW/HomePage/Shop/Internet/Leader/014_CC_.COM_NSS_Res_Shop_NET_Leader_FIOSZips-InternetLandingPage_KW.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Internet Challenger
    User launch Ftr.com application using URL

    Change location to zip code

    Select Interner from Shop Tab

    Validate Tel Number

    Validate Broadband Max Broadband Ultra and Broadband Ultimate

#    Click Simply Broadbad Max and return to products page
#
#    Click Simply Broadbad Ultimate and return to products page

    Click Simply Broadbad Ultra and return to products page