*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SIGNIN_DROPDOWN}  link=Sign In
${USERNAME}  css=.login-modal-table #fid-login-inline-username
${PASSWORD}  css=.login-modal-table #fid-login-inline-password
${USER_SIGNIN_BTN}  css=.btn.btn-primary.btn-block
${LANGUAGE_TOGGLE}  css=.lang-selector.hidden-xs>a
${SIGN_OUT}  link=Sign Out
${RESIDENTIAL_TAB}  link=
${BUSINESS_TAB}  link=Business
${WHOLESALE_TAB}  link=

*** Keywords ***

Sign In link
    wait until page contains element  ${SIGNIN_DROPDOWN}
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

Select Business Tab
    wait until element is enabled  ${BUSINESS_TAB}
    click link  ${BUSINESS_TAB}

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