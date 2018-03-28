*** Settings ***
Library  Selenium2Library
Library  FTRutil

*** Variables ***
${URL}  https://qat01.frontier.com/
${BROWSER}  Chrome

*** Keywords ***
Begin Web Test from Excel
    [Arguments]  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    ${BROWSER_EXCEL}  read_excel_data_by_cell_name  ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${BROWSER_NAME}
    ${URL_EXCEL}   read_excel_data_by_cell_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${DOTCOM_URL}
    open browser  ${URL_EXCEL}  ${BROWSER_EXCEL}

Begin Web Test
    open browser  ${URL}  ${BROWSER}

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

