*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60

Resource  ../../../Resources/KW/01HomePage/01Headers/01_ZipCode_CheckAvailability_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${ZIP_CODE1_INP}  75024
${ZIP_CODE1_TEXT}  Plano TX (change)
${ZIP_CODE2_INP}  14450
${ZIP_CODE2_TEXT}  Fairport NY (change)

*** Test Cases ***

01_ZipCode_CheckAvailability

    User launch Ftr.com application using URL

    Select change option from header

    Enter Zip Code and select Check Availability Button  ${ZIP_CODE1_INP}

    Verify black header now changes to "Plano,TX"  ${ZIP_CODE1_TEXT}

    Select Change link again and enter zip code and select Check Availability Button  ${ZIP_CODE2_INP}

    Verify black header now changes to 'Fairport NY'  ${ZIP_CODE2_TEXT}

