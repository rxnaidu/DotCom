*** Settings ***
Library  Selenium2Library  60
Library  FTRutil
Resource  ../Selectors/ChatSelector.robot

*** Keywords ***
Click Chat
    wait until element is enabled  ${CHAT_BUTTON}
    sleep  2s
    click element  ${CHAT_BUTTON}

Click Residential Radio on Chat
    wait until element is enabled  ${CHAT_RESIDENTIAL_RADIO}
    click element  ${CHAT_RESIDENTIAL_RADIO}

Validate Residential Radio on Chat
    wait until element is enabled  ${CHAT_RESIDENTIAL_RADIO}
    ${CUST_TYPE_RESI}  get text  ${CHAT_RESIDENTIAL_RADIO}
    should be equal  ${CUST_TYPE_RESI}  Residential

Click Business Radio on Chat
    wait until element is enabled  ${CHAT_BUSINESS_RADIO}
    click element  ${CHAT_BUSINESS_RADIO}

Validate Business Radio on Chat
    wait until element is enabled  ${CHAT_BUSINESS_RADIO}
    ${CUST_TYPE_BUS}  get text  ${CHAT_BUSINESS_RADIO}
    should be equal  ${CUST_TYPE_BUS}  Business

Click Repair Radio on Chat
    wait until element is enabled  ${CHAT_REPAIR_RADIO}
    wait until element is visible  ${CHAT_REPAIR_RADIO}
    click element  ${CHAT_REPAIR_RADIO}

Validate Repair Radio on Chat
    wait until element is enabled  ${CHAT_REPAIR_RADIO}
    wait until element is visible  ${CHAT_REPAIR_RADIO}
    ${SUPPORT_TYPE_REPAIR}  get text  ${CHAT_REPAIR_RADIO}
    should be equal  ${SUPPORT_TYPE_REPAIR}  Repair

Click Products and Sales Radio on Chat
    wait until element is enabled  ${CHAT_PRODUCTS_SALES_RADIO}
    wait until element is visible  ${CHAT_PRODUCTS_SALES_RADIO}
    click element  ${CHAT_PRODUCTS_SALES_RADIO}

Validate Products and Sales on Chat
    wait until element is enabled  ${CHAT_PRODUCTS_SALES_RADIO}
    wait until element is visible  ${CHAT_PRODUCTS_SALES_RADIO}
    sleep  2s
    ${SUPPORT_TYPE_PRODUCTS_SALES}  get text  ${CHAT_PRODUCTS_SALES_RADIO}
    should be equal  ${SUPPORT_TYPE_PRODUCTS_SALES}  Products and Sales

Click Internet Radio on Chat
    wait until element is enabled  ${CHAT_INTERNET_RADIO}
    wait until element is visible  ${CHAT_INTERNET_RADIO}
    click element  ${CHAT_INTERNET_RADIO}

validate Internet on chat
    wait until element is enabled  ${CHAT_INTERNET_RADIO}
    wait until element is visible  ${CHAT_INTERNET_RADIO}
    sleep  2s
    ${SERVICE_TYPE_INTERNET}  get text  ${CHAT_INTERNET_RADIO}
    should be equal  ${SERVICE_TYPE_INTERNET}  Internet

Click TV Radio on Chat
    wait until element is enabled  ${CHAT_TV_RADIO}
    wait until element is visible  ${CHAT_TV_RADIO}
    click element  ${CHAT_TV_RADIO}

validate TV on chat
    wait until element is enabled  ${CHAT_TV_RADIO}
    wait until element is visible  ${CHAT_TV_RADIO}
    sleep  2s
    ${SERVICE_TYPE_TV}  get text  ${CHAT_TV_RADIO}
    should be equal  ${SERVICE_TYPE_TV} TV

Click Frontier Secure Radio on Chat
    wait until element is enabled  ${CHAT_FRONTIER_SECURE_RADIO}
    wait until element is visible  ${CHAT_FRONTIER_SECURE_RADIO}
    click element  ${CHAT_FRONTIER_SECURE_RADIO}

validate Frontier Secure on chat
    wait until element is enabled  ${CHAT_FRONTIER_SECURE_RADIO}
    wait until element is visible  ${CHAT_FRONTIER_SECURE_RADIO}
    sleep  2s
    ${SERVICE_TYPE_FRONTIER_SECURE}  get text  ${CHAT_FRONTIER_SECURE_RADIO}
    should be equal  ${SERVICE_TYPE_FRONTIER_SECURE} TV

Click Voice Radio on Chat
    wait until element is enabled  ${CHAT_VOICE_RADIO}
    wait until element is visible  ${CHAT_VOICE_RADIO}
    click element  ${CHAT_VOICE_RADIO}

Validate Voice on Chat
    wait until element is enabled  ${CHAT_VOICE_RADIO}
    wait until element is visible  ${CHAT_VOICE_RADIO}
    ${SERVICE_TYPE_VOICE}  get text  ${CHAT_VOICE_RADIO}
    should be equal  ${SERVICE_TYPE_VOICE}  Voice

Click Fios Internet Radio on Chat
    wait until element is enabled  ${CHAT_FIOS_INTERNET}
    wait until element is visible  ${CHAT_FIOS_INTERNET}
    click element  ${CHAT_FIOS_INTERNET}

Validate Fios Internet Product on Chat
    wait until element is enabled  ${CHAT_FIOS_INTERNET}
    wait until element is visible  ${CHAT_FIOS_INTERNET}
    ${PRODUCT_TYPE_FIOS_INTERNET}  get text  ${CHAT_FIOS_INTERNET}
    should be equal  ${PRODUCT_TYPE_FIOS_INTERNET}  FiOS® Internet by Frontier®

Click Fios Voice Radio on Chat
    wait until element is enabled  ${CHAT_FIOS_VOICE}
    wait until element is visible  ${CHAT_FIOS_VOICE}
    click element  ${CHAT_FIOS_VOICE}

Validate Fios Voice Product on Chat
    wait until element is enabled  ${CHAT_FIOS_VOICE}
    wait until element is visible  ${CHAT_FIOS_VOICE}
    ${PRODUCT_TYPE_FIOS_VOICE}  get text  ${CHAT_FIOS_VOICE}
    should be equal  ${PRODUCT_TYPE_FIOS_VOICE}  FiOS® Voice Service

Click Fios TV Radio on Chat
    wait until element is enabled  ${CHAT_FIOS_VOICE}
    wait until element is visible  ${CHAT_FIOS_VOICE}
    click element  ${CHAT_FIOS_VOICE}

Validate Fios TV Product on Chat
    wait until element is enabled  ${CHAT_FIOS_TV}
    wait until element is visible  ${CHAT_FIOS_TV}
    ${PRODUCT_TYPE_FIOS_TV}  get text  ${CHAT_FIOS_TV}
    should be equal  ${PRODUCT_TYPE_FIOS_TV}  FiOS® TV by Frontier®

Click All Frontier Secure Radio on Chat
    wait until element is enabled  ${CHAT_ALL_FRONTIER_SECURE}
    wait until element is visible  ${CHAT_ALL_FRONTIER_SECURE}
    click element  ${CHAT_ALL_FRONTIER_SECURE}

Validate All Frontier Secure Product on Chat
    wait until element is enabled  ${CHAT_ALL_FRONTIER_SECURE}
    wait until element is visible  ${CHAT_ALL_FRONTIER_SECURE}
    ${PRODUCT_TYPE_ALL_FRONTIER_SECURE}  get text  ${CHAT_ALL_FRONTIER_SECURE}
    should be equal  ${PRODUCT_TYPE_ALL_FRONTIER_SECURE}  All Frontier Secure Products

Click PCS1 Next Button
    wait until element is enabled  ${CHAT_PCS1_NEXT_BTN}
    wait until element is visible  ${CHAT_PCS1_NEXT_BTN}
    click element  ${CHAT_PCS1_NEXT_BTN}
    sleep  3s

Validate PCS1 Next button
    wait until element is enabled  ${CHAT_PCS1_NEXT_BTN}
    wait until element is visible  ${CHAT_PCS1_NEXT_BTN}
    page should contain  Next

#-----------Screen 2---------------------#
Click Back Nav Link
    wait until element is enabled  ${CHAT_BACK_LINK}
    click element  ${CHAT_BACK_LINK}
    double click element

Validate Back Nav Link
    wait until element is enabled  ${CHAT_BACK_LINK}
    wait until element is visible  ${CHAT_BACK_LINK}
    page should contain  Back

Enter Name
    wait until element is enabled  ${CHAT_NAME}
    wait until element is visible  ${CHAT_NAME}
    input text  ${CHAT_NAME}  Automation

Enter Email
    wait until element is enabled  ${CHAT_EMAIL}
    wait until element is visible  ${CHAT_EMAIL}
    input text  ${CHAT_EMAIL}  auto@gmail.com

Enter invalid Email
    wait until element is enabled  ${CHAT_EMAIL}
    wait until element is visible  ${CHAT_EMAIL}
    input text  ${CHAT_EMAIL}  auto

Enter Phone
    wait until element is enabled  ${CHAT_PHONE}
    wait until element is visible  ${CHAT_PHONE}
    input text  ${CHAT_PHONE}  4698907654

Click PCS2 Next button
    wait until element is enabled  ${CHAT_PCS2_NEXT_BTN}
    wait until element is visible  ${CHAT_PCS2_NEXT_BTN}
    click element  ${CHAT_PCS2_NEXT_BTN}
    sleep  2s

Validate PCS2 Next button
    wait until element is enabled  ${CHAT_PCS2_NEXT_BTN}
    wait until element is visible  ${CHAT_PCS2_NEXT_BTN}
    page should contain  Next

Click PCS3 Submit Button
    wait until element is enabled  ${CHAT_SUBMIT_BTN}
    wait until element is visible  ${CHAT_SUBMIT_BTN}
    click element  ${CHAT_SUBMIT_BTN}
    sleep  2s

Enter Text on Text Area
    wait until element is enabled  ${CHAT_TEXT_AREA}
    input text  ${CHAT_TEXT_AREA}   Automation testing text area