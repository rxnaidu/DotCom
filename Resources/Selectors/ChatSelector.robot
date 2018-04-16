*** Settings ***
Library  Selenium2Library  60

*** Variables ***
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Chat Window1
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${CHAT_BUTTON}  id=chat-box-btn
${CHAT_RESIDENTIAL_RADIO}  xpath=//div[@id='collapseOne-chat']//input[@value="Residential"]/following-sibling::label[1]
${CHAT_BUSINESS_RADIO}  xpath=//div[@id='collapseOne-chat']//input[@value='Business']/following-sibling::label[1]
${CHAT_REPAIR_RADIO}  xpath=//div[@id='collapseTwo-chat']//input[@value="Repair"]/following-sibling::label[1]
${CHAT_PRODUCTS_SALES_RADIO}  xpath=//div[@id='collapseTwo-chat']//input[@value="Products-Sales"]/following-sibling::label[1]
${CHAT_INTERNET_RADIO}  xpath=//div[@id='collapseThree-chat']//input[@value="Internet"]/following-sibling::label[1]
${CHAT_VOICE_RADIO}  xpath=//div[@id='collapseThree-chat']//input[@value="Voice"]/following-sibling::label[1]
${CHAT_FRONTIER_SECURE_RADIO}  xpath=//div[@id='collapseThree-chat']//input[@value="Frontier-Secure"]/following-sibling::label[1]
${CHAT_TV_RADIO}  xpath=//div[@id='collapseThree-chat']//input[@value="TV"]/following-sibling::label[1]
${CHAT_FIOS_INTERNET}  xpath=//div[@id='collapseFour-chat']//input[@value="Frontier-FiOS"]/following-sibling::label[1]
${CHAT_FIOS_VOICE}  xpath=//div[@id='collapseFour-chat']//input[@value="Frontier-FiOS-Voice"]/following-sibling::label[1]
${CHAT_FIOS_TV}  xpath=//div[@id='collapseFour-chat']//input[@value="Frontier-FiOS-TV"]/following-sibling::label[1]
${CHAT_ALL_FRONTIER_SECURE}  xpath=//div[@id='collapseFour-chat']//input[@value="All-Frontier-Secure-Products"]/following-sibling::label[1]
${CHAT_PCS1_NEXT_BTN}  xpath=//div[@id='collapseFour-chat']//a[@ng-click="vm.handleNextStepClick()"]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Chat Window2
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${CHAT_BACK_LINK}  xpath=//a[@ng-click="chatState.goBack('form1')"]
${CHAT_NAME}  id=chatFormName
${CHAT_EMAIL}  name=email
${CHAT_PHONE}  name=phone
${CHAT_PCS2_NEXT_BTN}  xpath=//button[@ng-click="submitted=true"]
${CHAT_SUBMIT_BTN}  id=btnSubmitChat
${CHAT_TEXT_AREA}  name=reason
${CHAT_PCS3_BACK_LINK}  xpath=//a[@ng-click="changeViewOnSession('form3')"]

