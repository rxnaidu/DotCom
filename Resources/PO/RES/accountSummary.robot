*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${AUTOPAY_POPUP}  id=btnClose
${INTERNET}  xpath=//h5[text()='Internet']
${PHONE}  xpath=//h5[text()='Phone']
${VIDEO}  xpath=//h5[text()='Video']
${VIDEO_SHOP}  id=add-video-button
${ACCOUNT}  xpath=//div[@id="summary-section"]//select[@id='ddAccts']
*** Keywords ***

Verify Page Elements
    wait until page contains  welcome to Frontier!
    wait until page contains  Summary
    wait until page contains  Account Number

    page should contain  Current Balance
    page should contain  Account Summary

Close Auto Pay popup
    run keyword and ignore error  wait until element is enabled  ${AUTOPAY_POPUP}  20
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
    wait until element is visible  ${ACCOUNT}
    sleep  2s
    select from list by label  ${ACCOUNT}  219-462-4063-033100-5 MARK R.
    wait until page contains  My Services
    wait until page contains  Account Summary
    sleep  20s


Select Shop Button
    wait until element is enabled  ${VIDEO_SHOP}  150s
    click element  ${VIDEO_SHOP}
