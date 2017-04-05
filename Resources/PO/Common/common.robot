*** Settings ***
Library  Selenium2Library  60


*** Variables ***
${URL}  https://qat03.frontier.com/
${BROWSER}  Chrome
#${BROWSER}  firefox
#${BROWSER}  PhantomJS
#${BROWSER}  ie
*** Keywords ***

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
    close browser
