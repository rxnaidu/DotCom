*** Settings ***
Library  Selenium2Library  10

*** Variables ***
${URL}  https://qat03.frontier.com/
${BROWSER}  Chrome
${SIGNIN_BTN}  css=html>body>form>button
${URL_PASSWORD_DATA}  k33p1ngITr3al
${URL_PASSWORD}  name=password

${SIGNIN_DROPDOWN}  link=Sign In
${USERNAME}  css=.login-modal-table #fid-login-inline-username
${PASSWORD}  css=.login-modal-table #fid-login-inline-password
${Username_Inp_Ex}  ftrfrank1+automation3@gmail.com
${Password_Inp_Ex}  Frontier999
${USER_SIGNIN_BTN}  css=.btn.btn-primary.btn-block
*** Test Cases ***
Xpath
    open browser  ${URL}  ${BROWSER}
    maximize browser window
    wait until page contains element  ${SIGNIN_BTN}
    wait until element is enabled  ${SIGNIN_BTN}

    input password  ${URL_PASSWORD}  ${URL_PASSWORD_DATA}
    sleep  1s
    click button  ${SIGNIN_BTN}

#    ${hh_Text}  set variable  2345567
#
#    ${Text}  set variable  '${hh_Text}'
#
#    ${Pay_Bill}  set variable  xpath=//h6[contains(text(), ${Text})]
#
##    wait until element is enabled  ${Pay_Bill}
##    sleep  3s
##    click element  ${Pay_Bill}


    wait until element is enabled  ${USERNAME}
    input text  ${USERNAME}  ${Username_Inp_Ex}

    wait until element is enabled  ${PASSWORD}
    input password  ${PASSWORD}  ${Password_Inp_Ex}

    wait until element is enabled  ${USER_SIGNIN_BTN}
    click button  ${USER_SIGNIN_BTN}

#    wait until element is enabled  ${INTERNET}
    wait until page contains  Summary
    wait until page contains  Key Account Info
    sleep  10s
