*** Settings ***
Library  Selenium2Library
Resource  ../Common/common.robot
Resource  ../../Resources/Locators/shopLocators.robot

*** Variables ***
${ZIP_IN}  46835
${ZIP_IL}  61812
${ZIP_CT}  06515
${LIVE_CHAT_LINK1}  //span/a/img
${LIVE_CHAT_LINK2}  xpath=//section[2]/div/div/div/span/span/span/a/img
${LIVE_CHAT_IMAGE}  css=#header_bar > table > tbody > tr > td:nth-child(1) > table > tbody > tr > td > img
${LIVE_CHAT_TITLE}  title=BoldChat Support
${SPANISH_LANGUAGE_CHECK}  paquete     #¡Crea
${FTR_DOT_COM_TITLE}  title=FiOS TV + FiOS Internet + Phone Bundles | Service Bundle
${POPUP_ACCEEPT}  css=a.fsrDeclineButton

*** Keywords ***
##############*********** Test Case 1************* #####################################
#--------------------------------------------------------------------------------------#
Login to Ftr.com
    open browser  ${URL}  firefox
    maximize browser window
    input password  ${LOGIN_PASSWORD}  ${URL_PASSWORD}
    click button  ${LOGIN_SUBMIT}

Select "change" option from header
    click element  ${CHANGE_LOCATION_LINK}

Enter "Zip Code" and select "Check Availability" Button
    sleep  1s
    input text  ${CHANGE_LOCATION_ZIPCODE}  ${ZIP_COPPER}
    sleep  1s
    click link  ${CHEK_AVAILABILITY_BUTTON}

Select "Bundle" from Shop Category Drop down
    sleep  5s
    get window titles
    mouse over  ${SHOP_BUTTON}
#    wait until page contains  Bundles
#    wait until element is visible  Bundles
    sleep  3s
    click link  ${BUNDLE_OPTION}
    sleep  4s
    get window titles

   # run keyword if  choose ok on next confirmation  click element  css=a.fsrDeclineButton
   # dismiss alert
#    run keyword if  get text  css=a.fsrDeclineButton == 'No Thanks'  click element  css=a.fsrDeclineButton
 #    run keyword  alert should be present

Verify Multi-Language Toggle displayed in Header
    element should be visible  ${LANGUAGE_TOGGLE}
    ${toggle_text}  get text  ${LANGUAGE_TOGGLE}

##############******** Test Case 2************#####################################

Select Multi-Language Toggle from header
    click link  ${LANGUAGE_TOGGLE}

Verify Spanish should display on Bundle product page
    element should contain  ${LANGUAGE_CHECK}  ${SPANISH_LANGUAGE_CHECK}
    #${Spanish_Text}  get text  ${SPANISH_LANGUAGE_CHECK}
    ${spanish_header_check}  get text  css=.col-sm-12 .col-sm-offset-1>h1
    ${spanish_details_check}  get text  css=.col-sm-12 .col-sm-offset-1>h5

##############*********** Test Case 3 *************#####################################

Enter Zip Code: 46835 and Select Check Availability Button
    sleep  1s
    input text  ${CHANGE_LOCATION_ZIPCODE}  46835
    sleep  1s
    click link  ${CHEK_AVAILABILITY_BUTTON}
    sleep  1s

Enter Zip Code: 61802 and Select Check Availability Button
    sleep  1s
    input text  ${CHANGE_LOCATION_ZIPCODE}  61802
    sleep  1s
    click link  ${CHEK_AVAILABILITY_BUTTON}
    sleep  1s

Enter Zip Code: 14626 and Select Check Availability Button
    sleep  1s
    input text  ${CHANGE_LOCATION_ZIPCODE}  14626
    sleep  1s
    click link  ${CHEK_AVAILABILITY_BUTTON}
    sleep  1s

Enter Zip Code: 06515 and Select Check Availability Button
    input text  ${CHANGE_LOCATION_ZIPCODE}  06515
    sleep  1s
    click link  ${CHEK_AVAILABILITY_BUTTON}
    sleep  1s

Close IL "Live Chat" window
    close window
    get window titles
    sleep  1s
    select window  title=DISH TV + DSL Internet + Phone Bundles | Service Bundle

Close HR "Live Chat" window
    close window
    get window titles
    sleep  1s
    select window  title=DISH TV + DSL Internet + Phone Bundles | Service Bundle

Close BB "Live Chat" window
    close window
    get window titles
    sleep  1s
    select window  title=Vantage TV | Vantage Bundles | Vantage Voice | Frontier.com


Verify location module displays "Fort Wayne, IN"
    wait until page contains  Fort Wayne
#    ${zip_text}  get text  css=#locationDropdown > span
#    ${zip_value}   get text  xpath=//*[@id="locationDropdown"]/span
    element should contain  css=#locationDropdown > span  Fort Wayne IN (change)

Verify Bundle text present
    element should be visible  css=#bundles > div > section:nth-child(1) > div > div > article > div > h1
    ${text_header_check}  get text  css=.col-sm-12 .col-sm-offset-1>h1    #css=#bundles > div > section:nth-child(1) > div > div > article > div > h1
    ${text_details_check}  get text  css=.col-sm-12 .col-sm-offset-1>h5

Verify Phone number link present
    element should be visible   css=#bundles > div > section:nth-child(1) > div > div > article > div > div > div > span > strong > a
    ${phone_check}  get text  css=#bundles > div > section:nth-child(1) > div > div > article > div > div > div > span > strong > a

Verify Chat Live link present
    sleep  3s
#    ${chat_check}   get element attribute  css=.chatbanner .bcStatic
    element should be visible  css=.chatbanner .bcStatic

Click Live Chat link1
    sleep  2s
#    wait until page contains  chat
#    wait until element is visible  ${LIVE_CHAT_LINK1}
    click element  ${LIVE_CHAT_LINK1}
    sleep  1s
    get window titles
    select window  ${LIVE_CHAT_TITLE}
    sleep  1s

Verify "Frontier" logo present in chat window
    page should contain image  ${LIVE_CHAT_IMAGE}
    sleep  1s
    ${url}  get location
    log  ${url}

Close "Live Chat" window
    close window
#    get window titles
    sleep  1s
    select window  ${FTR_DOT_COM_TITLE}
    sleep  1s

Click Live Chat link2
    sleep  4s
    click element  ${LIVE_CHAT_LINK2}
    sleep  1s
    select window  ${LIVE_CHAT_TITLE}
    sleep  1s

Enter valid FIOS Zip Code and Select the Check Availability Button
    input text  ${CHANGE_LOCATION_ZIPCODE}  ${ZIP_FIOS}
    sleep  1s
    click link  ${CHEK_AVAILABILITY_BUTTON}
    sleep  1s





