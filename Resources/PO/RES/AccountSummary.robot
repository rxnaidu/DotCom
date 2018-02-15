*** Settings ***
Library  Selenium2Library  60
Library  FTRutil

*** Variables ***
${AUTOPAY_POPUP}  id=btnClose
${INTERNET}  xpath=//h5[text()='Internet']
${PHONE}  xpath=//h5[text()='Phone']
${VIDEO}  xpath=//h5[text()='Video']
${VIDEO_SHOP}  id=add-video-button
${ACCOUNT}  xpath=//div[@id="summary-section"]//select[@id='ddAccts']
${INTERNET_UPGRADE_BTN}  id=upgrade-internet-button
${VIDEO_UPGRADE_BTN}  id=upgrade-video-button

*** Keywords ***

Verify Page Elements
    wait until page contains  welcome to Frontier!
    wait until page contains  Summary
    wait until page contains  Account Number

    page should contain  Current Balance
    page should contain  Account Summary

Validate Internet Upgrade button
    wait until page contains  Internet
    wait until page contains  Upgrade  4m
    wait until element is enabled  ${INTERNET_UPGRADE_BTN}  4m
    sleep  3s

Click Internet Upgrade Button
    sleep  2s
    wait until element is enabled  ${INTERNET_UPGRADE_BTN}
    click button  ${INTERNET_UPGRADE_BTN}
    wait until page contains  Upgrade Your Current Internet Speed

Validate Video Upgrade button
    wait until page contains  Video
    wait until page contains  Upgrade  4M
    wait until element is visible  ${VIDEO_UPGRADE_BTN}  4M
    sleep  2s

Click Video Upgrade Button
    sleep  2s
    wait until element is enabled  ${VIDEO_UPGRADE_BTN}
    click button  ${VIDEO_UPGRADE_BTN}
    wait until page contains  Upgrade Your Current TV Package


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
    [Arguments]  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    ${Select_Account_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    wait until page contains  My Services
    wait until page contains  Account Summary
    wait until element is visible  ${ACCOUNT}
    wait until element is enabled  ${ACCOUNT}
    sleep  3s
    select from list by label  ${ACCOUNT}  ${Select_Account_Num}
    wait until page contains  My Services
    wait until page contains  Account Summary
    sleep  20s

Select Shop Button
    wait until element is enabled  ${VIDEO_SHOP}  150s
    click element  ${VIDEO_SHOP}
