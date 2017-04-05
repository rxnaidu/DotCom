*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SIGNIN_BTN}  css=html>body>form>button
${URL_PASSWORD_DATA}  k33p1ngITr3al
#francis
${URL_PASSWORD}  name=password

*** Keywords ***

Load
    maximize browser window
    wait until page contains element  ${SIGNIN_BTN}
    wait until element is enabled  ${SIGNIN_BTN}

    input password  ${URL_PASSWORD}  ${URL_PASSWORD_DATA}
    click button  ${SIGNIN_BTN}
