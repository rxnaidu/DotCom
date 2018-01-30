*** Settings ***
Library  Selenium2Library  60
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/RES/accountSummary.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC10

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    homePage.User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify user launches into Self Service Portal successfully
    wait until page contains  Video
    sleep  10s
    wait until page contains  Upgrade
    wait until element is visible  id=upgrade-video-button
    sleep  2s

Select close on auto payment popup
    accountSummary.Verify page elements
    Close Auto Pay popup

Click on Upgrade button for Video
#    #Close popup window
#    wait until element is enabled  xpath=//a[@class="boltupgx"]
#    click element  xpath=//a[@class="boltupgx"]
    sleep  2s
    #Click Upgrade button unde Video
    wait until element is enabled  id=upgrade-video-button
    click button  id=upgrade-video-button
    wait until page contains  Upgrade Your Current TV Package

Click on [Upgrade] button for the package that the user wants to Hop on
    wait until element is enabled  xpath=//fecomm-price[@price="10"]/../following-sibling::div/button
    click button  xpath=//fecomm-price[@price="10"]/../following-sibling::div/button
    wait until page contains  Select an Equipment Option

Click on Yes
    wait until element is enabled  xpath=//div[@id='customize-router-question']/div[1]/label/i
    click element  xpath=//div[@id='customize-router-question']/div[1]/label/i
    sleep  2s
    wait until element is enabled  id=continue-no-router
    click button  id=continue-no-router

Enter [Can be Reached] number and click [Update]
    wait until element is enabled  xpath=//input[@type="tel"]
    sleep  2s
    input text  xpath=//input[@type="tel"]  4699745555
    #Click Update button
    click button  id=popup-ok-button
    sleep  60s
    wait until page contains  Contact Information
    wait until page contains  Confirm Your Order
    wait until page contains  Activation

Enter initial and click Complete order
    input text  xpath=//input[@ng-model="userInitials.initials"]  hj

    click button  id=provisioning-conform-order-btn
    sleep  60
    wait until page contains  Order #

    ${Order_id}  get text  id=provisioning-order-id
    log  ${Order_id}
    #Order #069926108

