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
${CHAT_RESIDENTIAL_RADIO}  css=#collapseOne-chat [value="Residential"]+label span
${CHAT_BUSINESS_RADIO}  css=#collapseOne-chat [value="Business"]+label span
${CHAT_TECHNICAL_SUPPORT_RADIO}  css=#collapseTwo-chat [value="Technical-Support"]+label span
#${CHAT_REPAIR_RADIO}  css=.choice-outer [value="Repair"]
${CHAT_PRODUCTS_SALES_RADIO}  css=[value="Products and Sales"]+span
${CHAT_INTERNET_RADIO}  css=#collapseThree-chat [value="Internet"]+label span
${CHAT_TV_RADIO}  css=[value="TV"]+span
${CHAT_VOICE_RADIO}  css=[value="Voice"]+span
${CHAT_FRONTIER_SECURE_RADIO}  css=[value="Frontier Secure"]+span

${CHAT_FIOS_INTERNET}  css=#collapseFour-chat [value="Frontier-FiOS"]+label span
${CHAT_FIOS_VOICE}  css=[value="FiOS<sup>&reg;</sup> Voice Service"]+span
${CHAT_FIOS_TV}  css=[value="FiOS<sup>&reg;</sup> TV by Frontier<sup>&reg;</sup>"]+span
${CHAT_ALL_FRONTIER_SECURE}  xpath=//div[@id='collapseFour-chat']//input[@value="All-Frontier-Secure-Products"]/following-sibling::label[1]
${CHAT_PCS1_NEXT_BTN}  css=#collapseFour-chat .btn-left>a
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Chat Window2
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${CHAT_BACK_LINK}  css=[ng-click="goBack()"]
${CHAT_NAME}  css=#chatFormName
${CHAT_EMAIL}  css=[name="email"]
${CHAT_PHONE}  css=[name="phone"]
${CHAT_PCS2_NEXT_BTN}  css=[type="submit"]
${CHAT_SUBMIT_BTN}  id=btnSubmitChat
${CHAT_TEXT_AREA}  id=reason
${CHAT_PCS3_BACK_LINK}  css=[ng-click="goBack()"]

