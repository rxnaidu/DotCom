*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../PO/RES/accountSummary.robot
Resource  ../../PO/RES/AddInternetPackage.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC09
${REGION}  FT
${ORD_ID_DATA}  1
*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    homePage.User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify user launches into Self Service Portal successfully
    wait until page contains  Internet
    sleep  10s
    wait until page contains  Upgrade
    wait until element is visible  id=upgrade-internet-button  100
    sleep  3s
Select close on auto payment popup
    accountSummary.Verify page elements
    Close Auto Pay popup

Click on Upgrade button for Internet
#    wait until element is enabled  xpath=//a[@class="boltupgx"]
#    click element  xpath=//a[@class="boltupgx"]
    sleep  2s
    wait until element is enabled  id=upgrade-internet-button
    click button  id=upgrade-internet-button
    wait until page contains  Upgrade Your Current Internet Speed

Click on [Upgrade] button for Internet 50/50 Mbps package
    Add Fios Internet 50/50 Mbps Product

Click on Yes
    #Yes.I have one of the above routers option
    wait until element is enabled  xpath=//div[@id='customize-router-question']/div[1]/label/i
    Scroll Page To Locator View  xpath=//div[@id='customize-router-question']/div[1]/label/i
    click element  xpath=//div[@id='customize-router-question']/div[1]/label/i
    sleep  2s
    wait until element is enabled  id=continue-no-router
    click button  id=continue-no-router

Enter [Can be Reached] number and click [Update]
    wait until element is enabled  xpath=//input[@type="tel"]
    sleep  3s
    input text  xpath=//input[@type="tel"]  4699745555

    click button  id=popup-ok-button
    sleep  60s
    wait until page contains  Contact Information
    wait until page contains  Confirm Your Order
    wait until page contains  Activation

Enter initial and click Complete order
    wait until element is enabled  xpath=//input[@ng-model="userInitials.initials"]
    input text  xpath=//input[@ng-model="userInitials.initials"]  hj
    click button  id=provisioning-conform-order-btn
    sleep  60
    wait until page contains  Order #

    ${order_num_data}  get text  id=provisioning-order-id
    log  ${order_num_data}
#--    set global variable  ${order_num_data}  Order #070479286

    @{orderid}  Split String  ${order_num_data}  '#'
    ${ORD_ID_DATA}  set variable  @{orderid}[1]
    set global variable  ${ORD_ID_DATA}


    #Order #069926108 - Test03
    #Order #070264884 - Test01
    #Phone - 4699745555

Update orderid in Access Database Table for deactivation

    update_excel_data_by_cell_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ORDER_ID}  ${ORD_ID_DATA}

    update orderid in accessdb  ${REGION}  ${ORD_ID_DATA}


