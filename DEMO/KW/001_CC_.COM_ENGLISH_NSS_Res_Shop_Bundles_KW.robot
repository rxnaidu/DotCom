*** Settings ***
Library  Selenium2Library  60
Resource  ../../PO/Login/loginPage.robot


*** Variables ***
${CHANGE_DROPDOWN}  css=#locationDropdown > span
${ZIP_CODE}  css=#zipcode
#${ZIP_CODE_DATA}  14626
${CHEK_AVAILABILITY_BTN}  id=zipcodeAnchor
${SHOP_DROPDOWN}   link=Shop
${BUNDLE_OPTION}  link=Bundles
${LANGUAGE_TOGGLE}  css=.lang-selector.hidden-xs>a
${LANGUAGE_TOGGLE_IMAGE}  css=.lang-selector.hidden-xs>a>i

*** Keywords ***

User launch Ftr.com application using URL
    loginPage.Load

Select change option from header
    wait until element is enabled  ${CHANGE_DROPDOWN}
    click element  ${CHANGE_DROPDOWN}

Enter copper Zip Code and select Check Availability Button
    [Arguments]  ${Zip_Code_Data}
    input text  ${ZIP_CODE}  ${Zip_Code_Data}
    click link  ${CHEK_AVAILABILITY_BTN}

Select Bundle from Shop Category Drop down
    wait until element is enabled  ${SHOP_DROPDOWN}
    wait until element is visible  ${SHOP_DROPDOWN}
    sleep  3s
    mouse over  ${SHOP_DROPDOWN}
    sleep  2s
    wait until element is enabled  ${BUNDLE_OPTION}
    click link  ${BUNDLE_OPTION}
    sleep  2s
#   get window titles

Verify Multi-Language Toggle image displayed in Header

    wait until element is enabled  ${LANGUAGE_TOGGLE_IMAGE}

    page should contain element  ${LANGUAGE_TOGGLE_IMAGE}

Verify Multi-Language (Spanish) Toggle displayed in Header
    [Arguments]  ${Expected_Toggle_Text}

    wait until element is enabled  ${LANGUAGE_TOGGLE}
    wait until element is visible  ${LANGUAGE_TOGGLE}

    ${Actual_Toggle_Text}  get text  ${LANGUAGE_TOGGLE}
    log  ${Expected_Toggle_Text}

    should be equal   ${Expected_Toggle_Text}  ${Actual_Toggle_Text}

#    log  ${Actual_Toggle_Text}

#    run keyword if   '${Expected_Toggle_Text}'=='${Actual_Toggle_Text}'  Log  PASS
#    ...  ELSE  log   Fail







