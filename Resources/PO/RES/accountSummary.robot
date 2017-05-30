*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${AUTOPAY_POPUP}  id=btnClose

*** Keywords ***

Verify Page Elements
    wait until page contains  welcome to Frontier!
    wait until page contains  Summary
    wait until page contains  Account Number
    wait until page contains  Internet
    wait until page contains  Phone
    wait until page contains  Video
    sleep  8s

    run keyword and ignore error  click element  ${AUTOPAY_POPUP}

