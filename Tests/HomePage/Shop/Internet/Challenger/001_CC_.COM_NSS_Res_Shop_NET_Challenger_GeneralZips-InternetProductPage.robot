*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../../Resources/KW/HomePage/Shop/Internet/Challenger/001_CC_.COM_NSS_Res_Shop_NET_Challenger_GeneralZips-InternetProductPage_KW.robot
Resource  ../../../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Internet Challenger
    User launch Ftr.com application using URL

    Change location to zip code

    Select Interner from Shop Tab

    Validate Tel Number

    Validate Click to Chat