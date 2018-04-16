*** Settings ***
Library  Selenium2Library  60
Library  FTRutil
Library  robot/libraries/String.py

*** Variables ***
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${YES_ROUTERS}  xpath=//div[@id='customize-router-question']/div[1]/label/i
${CONTINUE}  id=continue-no-router
${CAN_BE_REACHED_TEL_NUM}  xpath=//input[@type="tel"]
${TEL_NUM_UPDATE_BTN}  id=popup-ok-button
${INITIALS}  xpath=//input[@ng-model="userInitials.initials"]
${COMPLETE_ORDER_BTN}  id=provisioning-conform-order-btn
#${REGION}  FT
#${ORD_ID_DATA}  1
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#Internet
${FIOS_INTERNET_50_50_MBPS}  xpath=//fecomm-price[@price="10"]/../following-sibling::div/button
${FIOS_INTERNET_75_75_MBPS}  xpath=//fecomm-price[@price="20"]/../following-sibling::div/button
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#Video
${FIOS_TV_EXTREME_HD}  xpath=//fecomm-price[@price="10"]/../following-sibling::div/button
${FIOS_TV_ULTIMATE_HD}  id=fecomm-bundle-select-0
#${FIOS_TV_EXTREME_HD}  id=fecomm-bundle-select-1
${FIOS_TV_PREFERRED_HD}  id="fecomm-bundle-select-2
${FIOS_TV_CUSTOM_ESSENTIALS}  id=fecomm-bundle-select-3
${FIOS_TV_CUSTOM_SPORTS_AND_MORE}  id=fecomm-bundle-select-4
${RIGHT_ARROW_PRODUCTS}  css=[ng-show="sliderShowNext"]
${LEFT_ARROW_PRODUCTS}  id=slidenav-previous
${CONTINUE_ADD_PREMIUM_CHANNELS}  id=done-with-channels
${CONTINUE_SELECT_RECORDING_EQUIPMENT_AND_SERVICES}  id=done-with-los-and-equipment
${SELECT_FIOS_QUANTUM_TV_ENHANCED}  id=select-los-type-1
${FIOS_QUANTUM_GATEWAY_ROUTER}  id=select-router-1
${CHECKOUT}  id=done-with-customization
