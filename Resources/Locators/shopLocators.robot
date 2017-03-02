*** Settings ***
Library  Selenium2Library

*** Variables ***
#Common Input data
${URL}  https://qat03.frontier.com/
${BROWSER}  firefox
${URL_PASSWORD}  francis
${ZIP_COPPER}  14626
${ZIP_FIOS}  46804
${ZIP_VANTATE}  06704
${ZIP_SATELITE}  13411


#Common slectors
${LOGIN_PASSWORD}  css=body > form > input[type="password"]
${LOGIN_SUBMIT}  css=body > form > button
${CHANGE_LOCATION_LINK}  css=#locationDropdown > span
${CHANGE_LOCATION_ZIPCODE}  css=#zipcode
${CHEK_AVAILABILITY_BUTTON}  id=zipcodeAnchor
${SHOP_BUTTON}  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > a

#Internet selectors
${SHOP_INTERNET_OPT}  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > ul > li:nth-child(2) > a
${INTERNET_TEL}  css=#page-content > section.container > section > section > section > section > article > div > div > div > span > strong > a  1.8
${INTERNET_SIMPLY_BROADBAND_MAX}  xpath=//*[@id="page-content"]/section[1]/div[2]/section/section[1]/div[1]/h3/a
${INTERNET_SIMPLY_BROADBAND_ULTRA}  css=#page-content > section.container > div:nth-child(3) > section > section:nth-child(3) > div:nth-child(2) > h3 > a
${INTERNET_SIMPLY_BROADBAND_ULTIMATE}  css=#page-content > section.container > div:nth-child(3) > section > section:nth-child(3) > div:nth-child(3) > h3 > a

#Bundles selectors
${BUNDLE_OPTION}  css=#header-main > div > div.col-sm-5.hidden-xs.ng-scope > ul > li:nth-child(1) > ul > li:nth-child(1) > a
${LANGUAGE_TOGGLE}  css=body > header > div.navbar-static-top.navbar-inverse > div > div > div.col-md-push-6.col-md-6.col-sm-push-5.col-sm-7.ng-scope > ul > li.lang-selector.hidden-xs > a
${LANGUAGE_CHECK}  css=#bundles > div > section.col-sm-12.col-md-12.bundle_details > h2



