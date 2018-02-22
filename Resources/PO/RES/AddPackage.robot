*** Settings ***
Library  Selenium2Library  60
Library  FTRutil
Library  robot/libraries/String.py

*** Variables ***
${YES_ROUTERS}  xpath=//div[@id='customize-router-question']/div[1]/label/i
${CONTINUE}  id=continue-no-router
${CAN_BE_REACHED_TEL_NUM}  xpath=//input[@type="tel"]
${TEL_NUM_UPDATE_BTN}  id=popup-ok-button
${INITIALS}  xpath=//input[@ng-model="userInitials.initials"]
${COMPLETE_ORDER_BTN}  id=provisioning-conform-order-btn
#${REGION}  FT
#${ORD_ID_DATA}  1

#Internet
${FIOS_INTERNET_50_50_MBPS}  xpath=//fecomm-price[@price="10"]/../following-sibling::div/button
${FIOS_INTERNET_75_75_MBPS}  xpath=//fecomm-price[@price="20"]/../following-sibling::div/button

#Video
${FIOS_TV_ULTIMATE_HD}  id=fecomm-bundle-select-0
${FIOS_TV_EXTREME_HD}  id=fecomm-bundle-select-1
${FIOS_TV_PREFERRED_HD}  id=fecomm-bundle-select-2
${FIOS_TV_CUSTOM_ESSENTIALS}  id=fecomm-bundle-select-3
${FIOS_TV_CUSTOM_SPORTS_AND_MORE}  id=fecomm-bundle-select-4
${CONTINUE_ADD_PREMIUM_CHANNELS}  id=done-with-channels
${CONTINUE_SELECT_RECORDING_EQUIPMENT_AND_SERVICES}  id=done-with-los-and-equipment
${SELECT_FIOS_QUANTUM_TV_ENHANCED}  id=select-los-type-1
${FIOS_QUANTUM_GATEWAY_ROUTER}  id=select-router-1
${CHECKOUT}  id=done-with-customization
${SIDE_NAV_RIGHT}  css=[ng-show="sliderShowNext"]
${SIDE_NAV_LEFT}  id=slidenav-previous

${RETURN_TO_MY_ACCOUNT}  xpath=//div[@id='navigaiton-panel-cancel']/div[2]
${CLEAR_MY_CART}  xpath=//a[@class="fecomm-font-bold ng-binding"]

*** Keywords ***
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                 Common code for Upgrade
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
Vefiry Order Summary section
    page should contain  Order Summary

Click Checkout
    wait until element is enabled  ${CHECKOUT}
    click element  ${CHECKOUT}

Click on Yes for router
    #Yes.I have one of the above routers option
    wait until element is enabled  ${YES_ROUTERS}
    Scroll Page To Locator View  ${YES_ROUTERS}
    click element  ${YES_ROUTERS}
    sleep  2s
    wait until element is enabled  ${CONTINUE}
    click button  ${CONTINUE}

Update Can be reached number
    wait until element is enabled  ${CAN_BE_REACHED_TEL_NUM}
    sleep  3s
    input text  ${CAN_BE_REACHED_TEL_NUM}  4699745555
    click button  ${TEL_NUM_UPDATE_BTN}

Entr Initials
    wait until element is enabled  ${INITIALS}  4m
    input text  ${INITIALS}  FE

Click Complete order Button
    [Arguments]  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ORDER_ID}
    wait until element is enabled  ${COMPLETE_ORDER_BTN}
    click button  ${COMPLETE_ORDER_BTN}
    wait until page contains  Order #  4m
    ${order_num_data}  get text  id=provisioning-order-id
    log  ${order_num_data}
#--    set global variable  ${order_num_data}
#    @{orderid}  Split String  ${order_num_data}  '#'
#    ${ORD_ID_DATA}  set variable  @{orderid}[1]
#    set global variable  ${ORD_ID_DATA}

#Update orderid in Access Database Table for deactivation
#
    update_excel_data_by_cell_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ORDER_ID}  ${order_num_data}
#
#    update orderid in accessdb  ${REGION}  ${ORD_ID_DATA}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                 Internet Package
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#


Upgrade Fios Internet 50/50 Mbps Product
    wait until element is enabled  ${FIOS_INTERNET_50_50_MBPS}
    click element  ${FIOS_INTERNET_50_50_MBPS}
    wait until page contains  Select an Equipment Option

Upgrade Fios Internet 75/75 Mbps Product
    wait until element is enabled  ${FIOS_INTERNET_75_75_MBPS}
    click element  ${FIOS_INTERNET_75_75_MBPS}
    wait until page contains  Select an Equipment Option

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                 Video Package
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

Upgrade Fios TV Extreme HD Product
    wait until element is enabled  ${FIOS_TV_EXTREME_HD}
    scroll page to locator view  ${FIOS_TV_EXTREME_HD}
    sleep  2s
    click element  ${FIOS_TV_EXTREME_HD}
    sleep  2s

#------------------Add Products Selection--------------------------#
Add Fios TV Ultimate HD Product
    wait until element is enabled  ${FIOS_TV_ULTIMATE_HD}
    wait until element is visible  ${FIOS_TV_ULTIMATE_HD}
    sleep  5s
    click element  ${FIOS_TV_ULTIMATE_HD}

Add Fios TV Extreme HD Product
    wait until element is enabled  ${FIOS_TV_EXTREME_HD}
    sleep  5s
    click element  ${FIOS_TV_EXTREME_HD}

Add Fios TV Preferred HD Product
    wait until element is visible  ${FIOS_TV_PREFERRED_HD}
    wait until element is enabled  ${FIOS_TV_PREFERRED_HD}
    sleep  5s
    click element  ${FIOS_TV_PREFERRED_HD}

Add Fios TV Custom Essentials Product
    wait until element is enabled  ${FIOS_TV_CUSTOM_ESSENTIALS}
    sleep  5s
    Click Right Navigation button
    sleep  2s
    click element  ${FIOS_TV_CUSTOM_ESSENTIALS}

Add Fios TV Custom Sports and More Product
    wait until element is enabled  ${FIOS_TV_CUSTOM_SPORTS_AND_MORE}
    sleep  5s
    Click Right Navigation button
    Click Right Navigation button
    sleep  2s
    click element  ${FIOS_TV_CUSTOM_SPORTS_AND_MORE}

Click Right Navigation button
    wait until element is enabled  ${SIDE_NAV_RIGHT}
    Scroll Page To Locator View  ${SIDE_NAV_RIGHT}
    sleep  2s
    click element  ${SIDE_NAV_RIGHT}

Click Left Navigation button
    wait until element is enabled  ${SIDE_NAV_LEFT}
    click element  ${SIDE_NAV_LEFT}

#------------------Add Premium Channels--------------------------#

Click Continue on Add Premium Channels page
    wait until element is enabled  ${CONTINUE_ADD_PREMIUM_CHANNELS}
    click element  ${CONTINUE_ADD_PREMIUM_CHANNELS}

Click Select for Fios Quantum TV Enhanced
    wait until element is enabled  ${SELECT_FIOS_QUANTUM_TV_ENHANCED}
    click element  ${SELECT_FIOS_QUANTUM_TV_ENHANCED}

Click Continue on Select Recording Equipment and Services page
    wait until element is enabled  ${CONTINUE_SELECT_RECORDING_EQUIPMENT_AND_SERVICES}
    click element  ${CONTINUE_SELECT_RECORDING_EQUIPMENT_AND_SERVICES}

Select Fios Quantum Gateway Router
    wait until element is enabled  ${FIOS_QUANTUM_GATEWAY_ROUTER}
    click element  ${FIOS_QUANTUM_GATEWAY_ROUTER}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                 Common Code
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

Click Return to My Account
    wait until element is visible  ${RETURN_TO_MY_ACCOUNT}
    click element  ${RETURN_TO_MY_ACCOUNT}

Click Clear Cart on popup
    wait until element is visible  ${CLEAR_MY_CART}
    wait until element is enabled  ${CLEAR_MY_CART}
    sleep  2s
    click element  ${CLEAR_MY_CART}
