*** Settings ***
Documentation  Ftr.com Resedential Shop Internet Landing Page
Library  Selenium2Library
Resource  ../Resources/Common.robot
Resource  ../Resources/Locators/shopLocators.robot

#Test Setup  Common.Begin Web Test
#Test Teardown  Common.End Web Test

*** Variables ***
#${BROWSER}  chrome

*** Test Cases ***
User sign into the landing page
    [Documentation]  This is basic test case for internet product
    [Tags]  Internet

    open browser  ${URL}  ${BROWSER}
    maximize browser window

    input password  ${LOGIN_PASSWORD}  francis
    click button  ${LOGIN_SUBMIT}

    click element  ${CHANGE_LOCATION_LINK}
    input text  ${CHANGE_LOCATION_ZIPCODE}  14626
    click link  ${CHANGE_LOCATION_CHEK_AVAILABILITY_LINK}
    #wait until element is visible  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > a
    sleep  2s
    mouse over  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > a
    wait until element is visible  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > ul > li:nth-child(2) > a
    click link  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > ul > li:nth-child(2) > a

    sleep  1s
    element should contain  css=#page-content > section.container > section > section > section > section > article > div > div > div > span > strong > a  1.8

#verify data
    ${result}  get text  xpath=//*[@id="page-content"]/section[1]/div[2]/section/section[1]/div[1]/h3/a
    log  ${result}

    element should contain  xpath=//*[@id="page-content"]/section[1]/div[2]/section/section[1]/div[1]/h3/a  Simply Broadband Max

    element should contain  css=#page-content > section.container > div:nth-child(3) > section > section:nth-child(3) > div:nth-child(2) > h3 > a  Simply Broadband Ultra

    element should contain  css=#page-content > section.container > div:nth-child(3) > section > section:nth-child(3) > div:nth-child(3) > h3 > a  Simply Broadband Ultimate

    close browser

