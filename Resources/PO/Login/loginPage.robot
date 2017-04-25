*** Settings ***
Library  Selenium2Library  30
Library  readExcel

*** Variables ***
${SIGNIN_BTN}  css=html>body>form>button
${URL_PASSWORD_DATA}  k33p1ngITr3al
#francis
${URL_PASSWORD}  name=password

*** Keywords ***

Load from Excel
    [Arguments]  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${URL_PASSWORD_DATA_EX}
    maximize browser window
    wait until page contains element  ${SIGNIN_BTN}
    wait until element is enabled  ${SIGNIN_BTN}

    ${Url_Password_Inp}  read_excel_data_by_cell_name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${URL_PASSWORD_DATA_EX}

    input password  ${URL_PASSWORD}  ${Url_Password_Inp}
    click button  ${SIGNIN_BTN}

Load
    maximize browser window
    wait until page contains element  ${SIGNIN_BTN}
    wait until element is enabled  ${SIGNIN_BTN}

    input password  ${URL_PASSWORD}  ${URL_PASSWORD_DATA}
    sleep  1s
    click button  ${SIGNIN_BTN}