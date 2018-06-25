*** Settings ***
Library  Selenium2Library  60

*** Variables ***
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Chat Links Validation on Shop>Bundle Page
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${CHAT_LINK_BANNER}  css=.chatbanner .Residential>img
#${CHAT_LINK_FLOATING}  .chatfooter .Residential>img
${CHAT_LINK_FOOTER}  css=.chatfooter .Residential>img

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Chat Window1
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${CHAT_BUTTON}  id=chat-box-btn
${CHAT_RESIDENTIAL_RADIO}  css=.fchat-view [value="Residential"]+span
${CHAT_BUSINESS_RADIO}  css=.fchat-view [value="Business"]+span
${CHAT_TECHNICAL_SUPPORT_RADIO}  css=.next-decision-container .choice-outer [value="Technical Support"]+span
#${CHAT_REPAIR_RADIO}  css=.choice-outer [value="Repair"]
${CHAT_PRODUCTS_SALES_RADIO}  css=[value="Products and Sales"]+span
${CHAT_INTERNET_RADIO}  css=[value="Internet"]+span
${CHAT_TV_RADIO}  css=[value="TV"]+span
${CHAT_VOICE_RADIO}  css=[value="Voice"]+span
${CHAT_FRONTIER_SECURE_RADIO}  css=[value="Frontier Secure"]+span

${CHAT_FIOS_INTERNET}  css=[value="FiOS<sup>&reg;</sup> Internet by Frontier<sup>&reg;</sup>"]+span
${CHAT_FIOS_VOICE}  css=[value="FiOS<sup>&reg;</sup> Voice Service"]+span
${CHAT_FIOS_TV}  css=[value="FiOS<sup>&reg;</sup> TV by Frontier<sup>&reg;</sup>"]+span
${CHAT_ALL_FRONTIER_SECURE}  xpath=//div[@id='collapseFour-chat']//input[@value="All-Frontier-Secure-Products"]/following-sibling::label[1]
${CHAT_PCS1_NEXT_BTN}  css=[ng-click="next()"]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Chat Window2
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${CHAT_BACK_LINK}  css=[ng-click="goBack()"]
${CHAT_NAME}  id=fchatFormName
${CHAT_EMAIL}  id=fchatFormEmail
${CHAT_PHONE}  id=fchatFormPhone
${CHAT_PCS2_NEXT_BTN}  css=[data-i18n="fchat.next"]
${CHAT_SUBMIT_BTN}  id=btnSubmitChat
${CHAT_TEXT_AREA}  id=reason
${CHAT_PCS3_BACK_LINK}  css=[ng-click="goBack()"]

