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

Begin Old Web Test

    #${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    #Call Method    ${options}    add_argument      always-authorize-plugins
    #Call Method    ${options}    add_argument      enable-npapi
    #Create WebDriver  Chrome    chrome_options=${options}

    #what is this doing???????
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver

    #Call Method  ${options}  add_argument  --allow-running-insecure-content

    #what is this doing???????
    Call Method  ${options}  add_argument  --test-type
    #what is this doing???????
    Call Method  ${options}  add_argument  --disable-extensions
    #Call Method  ${options}  add_argument  --disable-web-security
    #Call Method  ${options}  add_argument  --user-data-dir\=c://Users/rnn723/AppData/Local/Google/Chrome/User Data

    #what is this doing???????
    create webdriver  ${BROWSER}  chrome_options=${options}
    #create webdriver  ${BROWSER}  chrome_options=${options}

    Open Browser  about:blank  ${BROWSER}
    go to  ${URL}

End Web Test
    #Close the current browser
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
#    ${width}	${height}=	Get Window Size
    execute javascript  window.scrollTo(0, 0)
#    execute javascript  window.scrollTo(${width}, 0)
    sleep  2s