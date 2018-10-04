*** Settings ***
Library  Selenium2Library  60
Library  FTRutil
Resource  ../Selectors/AccountSummarySelector.robot

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
    wait until element is enabled  ${VIDEO_UPGRADE_BTN}  4M
    sleep  2s

Click Video Upgrade Button
    sleep  2s
    wait until element is enabled  ${VIDEO_UPGRADE_BTN}
    click button  ${VIDEO_UPGRADE_BTN}
    wait until page contains  Upgrade Your Current TV Package


Verify Add Video page elements
    wait until page contains  My Services
    wait until page contains  Shop  4m
    page should contain  Current Balance
    page should contain  Account Summary
    wait until element is enabled  ${ADD_VIDEO_SHOP_BTN}  4m

Click Shop Button
    wait until element is enabled  ${ADD_VIDEO_SHOP_BTN}
    click element  ${ADD_VIDEO_SHOP_BTN}
    sleep  2s

Select Account Number
    [Arguments]  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    ${Select_Account_Num}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    wait until page contains  My Services
    wait until page contains  Account Summary
    run keyword and ignore error  wait until element is visible  ${ACCOUNT}  30
    run keyword and ignore error  wait until element is enabled  ${ACCOUNT}  30
    sleep  3s
    run keyword and ignore error  select from list by label  ${ACCOUNT}  ${Select_Account_Num}
    wait until page contains  My Services
    wait until page contains  Account Summary
    sleep  20s

Close Auto Pay popup
    run keyword and ignore error  wait until element is enabled  ${AUTOPAY_POPUP}  30
    sleep  2s
    run keyword and ignore error  click element  ${AUTOPAY_POPUP}
    sleep  2s

Close Auto Pay popup for Ecom
    run keyword and ignore error  wait until element is enabled  ${AUTOPAY_POPUP}  3m
    sleep  2s
    run keyword and ignore error  click element  ${AUTOPAY_POPUP}
    sleep  2s

Close Upgrade popup
    run keyword and ignore error  wait until element is enabled  ${UPGRADE_POPUP}  5
    sleep  2s
    run keyword and ignore error  click element  ${UPGRADE_POPUP}
    sleep  2s

