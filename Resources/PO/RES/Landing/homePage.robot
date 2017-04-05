*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SIGNIN_DROPDOWN}  link=Sign In
${USERNAME}  css=.login-modal-table #fid-login-inline-username
${PASSWORD}  css=.login-modal-table #fid-login-inline-password
${USER_SIGNIN_BTN}  css=.btn.btn-primary.btn-block
${LANGUAGE_TOGGLE}  css=.lang-selector.hidden-xs>a
${SIGN_OUT}  link=Sign Out
${RESIDENTIAL_TAB}  link=Residential
${BUSINESS_TAB}  link=Business
${WHOLESALE_TAB}  link=Wholesale

${SEARCH_TEXT}  id=gsc-i-id1
${SEARCH_BTN}  css=[title="search"]

*** Keywords ***

Sign In link
    wait until element is enabled  ${SIGNIN_DROPDOWN}
    click link  ${SIGNIN_DROPDOWN}

Sign Out
    wait until element is enabled  ${SIGN_OUT}
    click link  ${SIGN_OUT}

User Sign In
    [Arguments]  ${Username_Inp}  ${Password_Inp}

    wait until element is enabled  ${USERNAME}
    input text  ${USERNAME}  ${Username_Inp}

    wait until element is enabled  ${PASSWORD}
    input password  ${PASSWORD}  ${Password_Inp}

    wait until element is enabled  ${USER_SIGNIN_BTN}
    click button  ${USER_SIGNIN_BTN}

    wait until page contains  welcome to Frontier!
    sleep  3s

Select Residential Tab
    wait until element is enabled  ${RESIDENTIAL_TAB}
    click link  ${RESIDENTIAL_TAB}

Select Business Tab
    wait until element is enabled  ${BUSINESS_TAB}
    click link  ${BUSINESS_TAB}

Select Wholesale Tab
    wait until element is enabled  ${WHOLESALE_TAB}
    click link  ${WHOLESALE_TAB}

Select Multi-Language Toggle for Spanish Language
    wait until page contains  Shop
    wait until page contains  My Account
    wait until element is enabled  ${LANGUAGE_TOGGLE}

    page should contain  Español
    click element  ${LANGUAGE_TOGGLE}

Verify Toggle display English
    wait until page contains  Comprar
    wait until page contains  Mi cuenta
    wait until page contains  Soporte

    wait until element is enabled  ${LANGUAGE_TOGGLE}
    page should contain  English

Verify Residential Home Page
    sleep  2s
    wait until page contains  Shop
    wait until page contains  My Account
    page should contain  Pay Your Bill
    page should contain  Check Your Mail
    page should contain  Check Your Order Status

Search Text
    [Arguments]  ${Search_Inp}
    wait until element is enabled  ${SEARCH_TEXT}

    input text  ${SEARCH_TEXT}  ${Search_Inp}
    click element  ${SEARCH_BTN}

Verify Search Text Results
    [Arguments]  ${Search_Inp}
    wait until page contains  All
    wait until page contains  Help Center

    page should contain  ${Search_Inp}


