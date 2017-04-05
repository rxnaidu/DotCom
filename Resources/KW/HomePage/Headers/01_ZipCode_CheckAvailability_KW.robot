*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot

*** Variables ***
${CHANGE_DROPDOWN}  css=#locationDropdown > span
${ZIP_CODE}  css=#zipcode
${CHEK_AVAILABILITY_BTN}  id=zipcodeAnchor
${SHOP_DROPDOWN}   link=Shop
${BUNDLE_OPTION}  link=Bundles
${LANGUAGE_TOGGLE}  css=.lang-selector.hidden-xs>a
${LANGUAGE_TOGGLE_IMAGE}  css=.lang-selector.hidden-xs>a>i


${ZIP_CODE_LOCATION}  xpath=//a[@id='locationDropdown']/span

*** Keywords ***

User launch Ftr.com application using URL
    loginPage.Load

Select change option from header
    wait until element is enabled  ${CHANGE_DROPDOWN}
    click element  ${CHANGE_DROPDOWN}

Enter Zip Code and select Check Availability Button
    [Arguments]  ${Zip_Code1_Inp}
    input text  ${ZIP_CODE}  ${Zip_Code1_Inp}

    wait until element is enabled  ${CHEK_AVAILABILITY_BTN}
    click link  ${CHEK_AVAILABILITY_BTN}

Verify black header now changes to "Plano,TX"
    [Arguments]  ${Expected_Location_Text}

    wait until element is enabled  ${ZIP_CODE_LOCATION}
    wait until element is visible  ${ZIP_CODE_LOCATION}
    sleep  2s
    ${Actual_Location_Text}  get text  ${ZIP_CODE_LOCATION}

    log  ${Expected_Location_Text}
    log  ${Actual_Location_Text}

    should be equal   ${Expected_Location_Text}  ${Actual_Location_Text}

Select Change link again and enter zip code and select Check Availability Button
    [Arguments]  ${Zip_Code2_Inp}

    wait until element is enabled  ${CHANGE_DROPDOWN}
    click element  ${CHANGE_DROPDOWN}

    input text  ${ZIP_CODE}  ${Zip_Code2_Inp}
    click link  ${CHEK_AVAILABILITY_BTN}

Verify black header now changes to 'Fairport NY'
    [Arguments]  ${Expected_Location_Text}

    wait until element is enabled  ${ZIP_CODE_LOCATION}
    wait until element is visible  ${ZIP_CODE_LOCATION}
    sleep  2s
    ${Actual_Location_Text}  get text  ${ZIP_CODE_LOCATION}

    log  ${Expected_Location_Text}
    log  ${Actual_Location_Text}

    should be equal   ${Expected_Location_Text}  ${Actual_Location_Text}










