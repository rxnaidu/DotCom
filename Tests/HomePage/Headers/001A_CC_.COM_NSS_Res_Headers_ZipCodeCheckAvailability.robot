*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60

Resource  ../../../Resources/KW/HomePage/Headers/01_ZipCode_CheckAvailability_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

01_ZipCode_CheckAvailability

    User launch Ftr.com application using URL

    Select change option from header

    Enter Zip Code and select Check Availability Button

    Verify header now changes to "Plano,TX"

#    Select Change link again and enter zip code and select Check Availability Button
#
#    Verify black header now changes to 'Fairport NY'

