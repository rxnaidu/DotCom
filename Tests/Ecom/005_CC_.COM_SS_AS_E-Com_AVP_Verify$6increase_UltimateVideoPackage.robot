*** Settings ***
Library  Selenium2Library  90

Resource  ../../Resources/KW/Ecom/005_CC_.COM_SS_AS_E-Com_AVP_Verify$6increase_UltimateVideoPackage_KW.robot
Resource  ../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

ECOM Regression

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Verify Vido upgrage option is displayed under Account Summary

    Select close on auto payment popup

    Click Shop button for Video Upgrade

    Click Select button for for adding Fios TV Ultimate HD product

    Add Premium Channels and Click Continue on Add Premium Channels page

    Select Fios Quantum TV Enhanced DVR Service & Equipment option

    Select Continue button on Select Recording Equipment and Services page

    Click Select option for Fios Quantum Gateway Router on Confirm your router page

    Validate the display of the Order Summary section on the Reivew page

    Select Checkout option

    Enter Can be reached number on Contact Information popup

    Validate Review page elements

    Enter initial and click Complete order

    Validate order id details

    Update orderid in Access Database Table for deactivation

    Enter initial and click Complete order

    Update orderid in Access Database Table for deactivation



