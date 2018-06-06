*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../../Resources/KW/HomePage/Shop/Internet/Neutrality/001_CC_.COM_NSS_Res_Shop_NET_NN_FCCLink_KW.robot
Resource  ../../../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
Internet Multi_Language
    User launch Ftr.com application using URL

    Select Interner from Shop Tab

    Change location to zip code1

    Select Learn More button for BB Ultra Product

    Validate FCC BB Disclosure Link

    Click FCC Broadband Disclosure Document link

    Validate the Form allows the User to Geolocate

    Select product from Drop down list

    Validate correct Month to Month Pricing for the Product Selected








