*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${FIOS_INTERNET_50_50_MBPS}  xpath=//fecomm-price[@price="10"]/../following-sibling::div/button

*** Keywords ***
Add Fios Internet 50/50 Mbps Product
    wait until element is enabled  ${FIOS_INTERNET_50_50_MBPS}
    click element  ${FIOS_INTERNET_50_50_MBPS}
    wait until page contains  Select an Equipment Option