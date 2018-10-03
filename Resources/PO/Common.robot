*** Settings ***
Library  Selenium2Library
Library  FTRutil

*** Variables ***
${SIGNIN_BTN}  css=html>body>form>button
${URL_PASSWORD_DATA}  k33p1ngITr3al
${URL_PASSWORD}  name=password

${SCREEN_WIDTH}  1024
${SCREEN_HIGHT}  768

${URL}  ${SPACE}
${EXCEL_LOC}  ${SPACE}
#${ENV}  ${SPACE}
${ENV}  Test03

${DOTCOM_TEST01_URL}  https://qat01.frontier.com/
${DOTCOM_TEST02_URL}  https://qat02.frontier.com/
${DOTCOM_TEST03_URL}  https://qat03.frontier.com/

${DOTCOM_TEST01_EXCEL}  C:/Development/Robot/DotCom/TestData/qat01.xlsx
${DOTCOM_TEST02_EXCEL}  C:/Development/Robot/DotCom/TestData/qat02.xlsx
${DOTCOM_TEST03_EXCEL}  C:/Development/Robot/DotCom/TestData/qat03.xlsx


${DOTCOM_CPNI_TEST01_URL}  https://qat01.frontier.com/resources/cpni
${DOTCOM_CPNI_TEST02_URL}  https://qat02.frontier.com/resources/cpni
${DOTCOM_CPNI_TEST03_URL}  https://qat03.frontier.com/resources/cpni

${DOTCOM_CHAT_SMC_TEST01_URL}  https://agentqat01.ftr.com/agent/social_media_chatlink_generator#/
${DOTCOM_CHAT_SMC_TEST02_URL}  https://agentqat02.ftr.com/agent/social_media_chatlink_generator#/
${DOTCOM_CHAT_SMC_TEST03_URL}  https://agentqat03.ftr.com/agent/social_media_chatlink_generator#/

*** Keywords ***

Begin Web Test from Excel
    [Arguments]  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

    Launch URL  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}
    Enter URL Password

Launch SMS URL
    [Arguments]  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}
    Launch URL  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

#====Sub modules Starts=====#
Launch URL
     [Arguments]  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

    ${BROWSER}  read_excel_data_by_cell_name  ${EXCEL_LOC}  ${SHEET_NAME}   ${TESTCASE_NO}  ${BROWSER_NAME}
    open browser  ${URL}  ${BROWSER}
    set window size  ${SCREEN_WIDTH}  ${SCREEN_HIGHT}

Enter URL Password
    wait until element is enabled  ${SIGNIN_BTN}
    input password  ${URL_PASSWORD}  ${URL_PASSWORD_DATA}
    click button  ${SIGNIN_BTN}

#====Sub modules Ends=====#

Begin Web Test
    ${URL}=  run keyword if  '${ENV}' == 'Test01'  set variable  ${DOTCOM_TEST01_URL}
    ...     ELSE IF   '${ENV}' == 'Test02'  set variable  ${DOTCOM_TEST02_URL}
    ...     ELSE IF   '${ENV}' == 'Test03'  set variable  ${DOTCOM_TEST03_URL}
    ...     ELSE    log  "No Environment details provided from ALM Test Case"
    ${URL}  set global variable  ${URL}

    ${EXCEL_LOC}=  run keyword if  '${ENV}' == 'Test01'  set variable  ${DOTCOM_TEST01_EXCEL}
    ...     ELSE IF   '${ENV}' == 'Test02'  set variable  ${DOTCOM_TEST02_EXCEL}
    ...     ELSE IF   '${ENV}' == 'Test03'  set variable  ${DOTCOM_TEST03_EXCEL}
    ...     ELSE    log  "No Environment details provided from ALM Test Case"
    ${EXCEL_LOC}  set global variable  ${EXCEL_LOC}

Begin Web Test CPNI
    ${URL}=  run keyword if  '${ENV}' == 'Test01'  set variable  ${DOTCOM_CPNI_TEST01_URL}
    ...     ELSE IF   '${ENV}' == 'Test02'  set variable  ${DOTCOM_CPNI_TEST02_URL}
    ...     ELSE IF   '${ENV}' == 'Test03'  set variable  ${DOTCOM_CPNI_TEST03_URL}
    ...     ELSE    log  "No Environment details provided from ALM Test Case"
    ${URL}  set global variable  ${URL}

    ${EXCEL_LOC}=  run keyword if  '${ENV}' == 'Test01'  set variable  ${DOTCOM_TEST01_EXCEL}
    ...     ELSE IF   '${ENV}' == 'Test02'  set variable  ${DOTCOM_TEST02_EXCEL}
    ...     ELSE IF   '${ENV}' == 'Test03'  set variable  ${DOTCOM_TEST03_EXCEL}
    ...     ELSE    log  "No Environment details provided from ALM Test Case"
    ${EXCEL_LOC}  set global variable  ${EXCEL_LOC}

Begin Web Test Chat SMC
    ${URL}=  run keyword if  '${ENV}' == 'Test01'  set variable  ${DOTCOM_CHAT_SMC_TEST01_URL}
    ...     ELSE IF   '${ENV}' == 'Test02'  set variable  ${DOTCOM_CHAT_SMC_TEST02_URL}
    ...     ELSE IF   '${ENV}' == 'Test03'  set variable  ${DOTCOM_CHAT_SMC_TEST03_URL}
    ...     ELSE    log  "No Environment details provided from ALM Test Case"
    ${URL}  set global variable  ${URL}

    ${EXCEL_LOC}=  run keyword if  '${ENV}' == 'Test01'  set variable  ${DOTCOM_TEST01_EXCEL}
    ...     ELSE IF   '${ENV}' == 'Test02'  set variable  ${DOTCOM_TEST02_EXCEL}
    ...     ELSE IF   '${ENV}' == 'Test03'  set variable  ${DOTCOM_TEST03_EXCEL}
    ...     ELSE    log  "No Environment details provided from ALM Test Case"
    ${EXCEL_LOC}  set global variable  ${EXCEL_LOC}



End Web Test
    delete all cookies
    close all browsers

SCROLL_DOWN_PAGE_HALF
    ${width}	${height}=	Get Window Size
    execute javascript  window.scrollTo(${width}/2, ${height}/2)
    sleep  2s

SCROLL_DOWN_PAGE_BOTTOM
    ${x}  ${y}  get window position
    ${width}	${height}=	Get Window Size
    execute javascript  window.scrollTo(${width}, ${height})
    sleep  2s

SCROLL_UP
    execute javascript  window.scrollTo(0, 0)
    sleep  2s

