*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${FIOS_TV_ULTIMATE_HD}  id=fecomm-bundle-select-0
${FIOS_TV_EXTREME_HD}  id=fecomm-bundle-select-1
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
${CAN_BE_REACHED_NUMBER}  xpath=//input[@type="tel"]
${CAN_BE_REACHED_NUMBER_DATA}  4694445555
${UPDATE}  id=popup-ok-button
${INITIALS}  xpath=//input[@ng-model="userInitials.initials"]
${INITIALS_DATA}  hj
${COMPLETE_ORDER}  id=provisioning-conform-order-btn
${ORDER_NUMBER}  id=provisioning-order-id

*** Keywords ***
Add Fios TV Ultimate HD Product
    wait until element is enabled  ${FIOS_TV_ULTIMATE_HD}
    click element  ${FIOS_TV_ULTIMATE_HD}

Add Fios TV Extreme HD Product
    wait until element is enabled  ${FIOS_TV_EXTREME_HD}
    click element  ${FIOS_TV_EXTREME_HD}

Add Fios TV Preferred HD Product
    wait until element is enabled  ${FIOS_TV_PREFERRED_HD}
    click element  ${FIOS_TV_PREFERRED_HD}

Add Fios TV Custom Essentials Product
    wait until element is enabled  ${FIOS_TV_CUSTOM_ESSENTIALS}
    click element  ${FIOS_TV_CUSTOM_ESSENTIALS}

Add Fios TV Custom Sports and More Product
    wait until element is enabled  ${RIGHT_ARROW_PRODUCTS}
    click element  ${RIGHT_ARROW_PRODUCTS}
    sleep  2s
    wait until element is enabled  ${FIOS_TV_CUSTOM_SPORTS_AND_MORE}
    click element  ${FIOS_TV_CUSTOM_SPORTS_AND_MORE}

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

Vefiry Order Summary section
    page should contain  Order Summary

Click Checkout
    wait until element is enabled  ${CHECKOUT}
    click element  ${CHECKOUT}

Update Contact Information
    wait until element is enabled  ${CAN_BE_REACHED_NUMBER}
    input text  ${CAN_BE_REACHED_NUMBER}  ${CAN_BE_REACHED_NUMBER_DATA}

    #Click Update button
    wait until element is enabled  ${UPDATE}
    click element  ${UPDATE}

Verify Review page elements
    wait until page contains  Contact Information
    wait until page contains  Complete Order

Update Initials
    wait until element is enabled  ${INITIALS}
    input text  ${INITIALS}  ${INITIALS_DATA}

Click Complete order
    wait until element is enabled  ${COMPLETE_ORDER}
    click button  ${COMPLETE_ORDER}

Verify order id details
    sleep  60
    wait until page contains  Order #
    ${order_num_data}  get text  ${ORDER_NUMBER}
    log  ${order_num_data}

    @{orderid}  Split String  ${order_num_data}  '#'
    ${ORD_ID_DATA}  set variable  @{orderid}[1]
    set global variable  ${ORD_ID_DATA}