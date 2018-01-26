*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${AUTOPAY_POPUP}  id=btnClose
${INTERNET}  xpath=//h5[text()='Internet']
${PHONE}  xpath=//h5[text()='Phone']
${VIDEO}  xpath=//h5[text()='Video']
${VIDEO_SHOP}  id=add-video-button

*** Keywords ***

Verify Page Elements
    wait until page contains  welcome to Frontier!
    wait until page contains  Summary
    wait until page contains  Account Number

    page should contain  Current Balance
    page should contain  Account Summary

Close Auto Pay popup
    run keyword and ignore error  wait until element is enabled  ${AUTOPAY_POPUP}  20s
    run keyword and ignore error  click element  ${AUTOPAY_POPUP}
    sleep  2s

Verify Video upgrage page elements
    wait until page contains  My Services
    wait until page contains  Shop
    page should contain  Add New Services
    page should contain  Account Summary
    page should contain  My Account
    page should contain  Summary

Select Account Number
    wait until page contains  My Services
    wait until page contains  Account Summary
    wait until element is enabled   id=ddAccts
    sleep  5s
#    select from list by label  id=ddAccts  813-875-3013-122790-5 ARMANDO P.
    click element  id=ddAccts
    sleep  2s
    select from list by index   id=ddAccts  2


Select Shop Button
    wait until element is enabled  ${VIDEO_SHOP}  150s
    click element  ${VIDEO_SHOP}
