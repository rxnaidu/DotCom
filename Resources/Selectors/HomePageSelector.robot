*** Settings ***
Library  Selenium2Library

*** Variables ***
${CHANGE_DROPDOWN}  css=#locationDropdown > span
${ZIP_CODE}  css=#zipcode
${CHEK_AVAILABILITY_BTN}  id=zipcodeAnchor
${SHOP_TAB}  id=ecomm-rv-anchor-Shop
${MY_ACCOUNT_TAB}  id=ecomm-rv-anchor-MyAccount
${SHOP_DROPDOWN}   link=Shop
${BUNDLE_OPTION}  link=Bundles
${LANGUAGE_TOGGLE}  css=.lang-selector.hidden-xs>a
${LANGUAGE_TOGGLE_IMAGE}  css=.lang-selector.hidden-xs>a>i
#${ZIP_CODE_LOCATION}  xpath=//a[@id='locationDropdown']/span
${ZIP_CODE_LOCATION}  xpath=//span[contains(text(),'Plano')]
${INTERNET}  xpath=//h5[text()='Internet']
${SIGNIN_DROPDOWN}  css=#signinDropdown
${USERNAME}  css=.login-modal-table #fid-login-inline-username
${PASSWORD}  css=.login-modal-table #fid-login-inline-password
${USER_SIGNIN_BTN}  css=.btn.btn-primary.btn-block
${LANGUAGE_TOGGLE}  css=.lang-selector.hidden-xs>a
${SIGN_OUT}  id=aSignOut
${RESIDENTIAL_TAB}  link=Residential
${BUSINESS_TAB}  link=Business
${WHOLESALE_TAB}  link=Wholesale
${SEARCH_TEXT}  id=gsc-i-id1
${SEARCH_BTN}  css=[title="search"]
${GEOLOCATION_INDICATOR}  css=.fa.fa-map-marker.green
${FRONTIER_LOGO}  id=ecomm-rv-navbar-brand
${BANNER_TEL_NO}  css=.product-banner  .InvocaSpanClass

