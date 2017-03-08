*** Settings ***
Documentation  Ftr.com Resedential Shop Internet Landing Page
Library  Selenium2Library
Resource  ../Resources/Common.robot

#Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test


*** Variables ***
${BROWSER}  CHROME

*** Test Cases ***
Scenario: Verify Unique telephone number
    GIVEN Login to the home Landing page using valid URL and Password
    AND Select Change hyperlink on header tab
    AND Enter valid zip code For non-Illinois Copper Only and click on check availability button
    WHEN Select Internet option from the shop 2nd tier nav tab and User should be taken to Internet Product Page
    THEN User shoud see unique telephone number on the page

Scenario: Verify Internet Bundle offers
    GIVEN Login to the home Landing page using valid URL and Password
    AND Select Change hyperlink on header tab
    AND Enter valid zip code For non-Illinois Copper Only and click on check availability button
    WHEN Select Internet option from the shop 2nd tier nav tab and User should be taken to Internet Product Page
    THEN User is able to see Broadband Max product
    AND User is able to see Broadband Ultra product
    AND User is able to see Broadband Ultimate product

*** Keywords ***

#Given
Login to the home Landing page using valid URL and Password
    open browser  https://qat03.frontier.com/  ${BROWSER}
    maximize browser window
    input password  css=body > form > input[type="password"]  francis
    click button  css=body > form > button
#AND
Select Change hyperlink on header tab
    click element  css=#locationDropdown > span
#AND
Enter valid zip code For non-Illinois Copper Only and click on check availability button
    input text  css=#zipcode  14626
    click link  id=zipcodeAnchor

#WHEN
Select Internet option from the shop 2nd tier nav tab and User should be taken to Internet Product Page
    sleep  2s
    mouse over  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > a
    #wait until element is visible  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > ul > li:nth-child(2) > a
    click link  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > ul > li:nth-child(2) > a
#THEN
User shoud see unique telephone number on the page
    sleep  1s
    element should contain  css=#page-content > section.container > section > section > section > section > article > div > div > div > span > strong > a  1.8

#THEN
User is able to see Broadband Max product
    element should contain  xpath=//*[@id="page-content"]/section[1]/div[2]/section/section[1]/div[1]/h3/a  Simply Broadband Max
#AND
User is able to see Broadband Ultra product
    element should contain  css=#page-content > section.container > div:nth-child(3) > section > section:nth-child(3) > div:nth-child(2) > h3 > a  Simply Broadband Ultra
#AND
User is able to see Broadband Ultimate product
    element should contain  css=#page-content > section.container > div:nth-child(3) > section > section:nth-child(3) > div:nth-child(3) > h3 > a  Simply Broadband Ultimate
