*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SIGNIN_DROPDOWN}  link=Sign In
#css=#signinDropdown
${USERNAME}  css=.login-modal-table #fid-login-inline-username
${PASSWORD}  css=.login-modal-table #fid-login-inline-password
${USER_SIGNIN_BTN}  css=.btn.btn-primary.btn-block

*** Keywords ***

Sign In link
    wait until page contains element  ${SIGNIN_DROPDOWN}
    click link  ${SIGNIN_DROPDOWN}

User Sign In
    [Arguments]  ${Username_Inp}  ${Password_Inp}

    wait until element is enabled  ${USERNAME}
    input text  ${USERNAME}  ${Username_Inp}

    wait until element is enabled  ${PASSWORD}
    input password  ${PASSWORD}  ${Password_Inp}

    wait until element is enabled  ${USER_SIGNIN_BTN}
    click button  ${USER_SIGNIN_BTN}

    wait until page contains  welcome to Frontier!
