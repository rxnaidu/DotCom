*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SIGNIN_BTN}  css=html>body>form>button
${URL_PASSWORD_DATA}  francis
${URL_PASSWORD}  name=password

*** Keywords ***

Load
    maximize browser window
    wait until page contains element  ${SIGNIN_BTN}

    input password  ${URL_PASSWORD}  ${URL_PASSWORD_DATA}
    click button  ${SIGNIN_BTN}
