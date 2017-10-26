*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${AUTOPAY_POPUP}  id=btnClose
${INTERNET}  xpath=//h5[text()='Internet']
${PHONE}  xpath=//h5[text()='Phone']
${VIDEO}  xpath=//h5[text()='Video']

*** Keywords ***

Verify Page Elements
    sleep  4s
    wait until element is enabled  ${INTERNET}
    wait until page contains  welcome to Frontier!
    wait until page contains  Summary
    wait until page contains  Account Number
    wait until page contains  Internet
#    wait until page contains  Phone
    wait until page contains  Video


Close Auto Pay popup
    wait until element is enabled  ${INTERNET}
#    wait until element is enabled  ${PHONE}
#    wait until element is enabled  ${VIDEO}
#    wait until page contains  One-time set up, no more late fees.
    sleep  10s
#    wait until element is enabled  ${AUTOPAY_POPUP}
#    focus  ${AUTOPAY_POPUP}
    run keyword and ignore error  click element  ${AUTOPAY_POPUP}
    sleep  2s

