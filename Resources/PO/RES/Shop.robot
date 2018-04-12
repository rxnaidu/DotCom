*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SHOP_TAB}  id=ecomm-rv-anchor-Shop
${MY_ACCOUNT_TAB}  id=ecomm-rv-anchor-MyAccount
${BUNDLE}  id=ecomm-rv-anchor-Bundles
${INTERNET_OPA}  id=ecomm-rv-anchor-Internet
${PHONE}  id=ecomm-rv-anchor-Phone
${VIDEO/TV}  css=[id="ecomm-rv-anchor-Video/TV"]
${DIGITAL_ESSENTIALS}  link=Digital Essentials
${FRONTIER_SECURE}  id=ecomm-rv-anchor-FrontierSecure
${MOVING}  id=ecomm-rv-anchor-Moving

#----------spanish---------------#
${SHOP_TAB_SPA}  css=#ecomm-rv-anchor-Comprar
${BUNDLE_SPA}  id=ecomm-rv-anchor-Paquetes
${INTERNET_SPA}  id=ecomm-rv-anchor-Internet
${PHONE_SPA}  id=ecomm-rv-anchor-Tel&#233;fono
${VIDEO/TV_SPA}  id=ecomm-rv-anchor-Video/TV
${DIGITAL_ESSENTIALS_SPA}  id=ecomm-rv-anchor-Art&#237;culosdigitalesesenciales
${MOVING_SPA}  id=ecomm-rv-anchor-Mudanzas
${FRONTIER_SECURE_SPA}  id=ecomm-rv-anchor-FrontierSecure

*** Keywords ***

Mouse over on Shop Tab
    wait until page contains  Shop
    wait until element is enabled  ${SHOP_TAB}
    focus  ${SHOP_TAB}
    sleep  1s
    mouse over  ${SHOP_TAB}
    sleep  1s

Verify Shop sub tabs are displayed
    wait until element is enabled  ${BUNDLE}
    sleep  2s

    page should contain  Bundles
    page should contain  Internet
    page should contain  Phone
    page should contain  Video/TV
    page should contain  Frontier Secure
    page should contain  Moving

Select Bundle option
    wait until element is enabled  ${BUNDLE}
    click link  ${BUNDLE}

Select Internet option
    wait until element is enabled  ${INTERNET_OPA}
    click link  ${INTERNET_OPA}

Select Phone option
    wait until element is enabled  ${PHONE}
    click link  ${PHONE}

Select Video/TV option
    wait until element is enabled  ${VIDEO/TV}
    click link  ${VIDEO/TV}

Select Digital Essentials option
    wait until element is enabled  ${DIGITAL_ESSENTIALS}
    click link  ${DIGITAL_ESSENTIALS}

Select Frontier Secure option
    wait until element is enabled  ${FRONTIER_SECURE}
    click link  ${FRONTIER_SECURE}

Select Moving option
    wait until element is enabled  ${MOVING}
    click link  ${MOVING}

#----------------SPANISH  LANGUAGE--------------------------#
Mouse over on Shop Tab-Spanish
    wait until page contains  Comprar
    wait until element is enabled  ${SHOP_TAB_SPA}
    sleep  1s
    focus  ${SHOP_TAB_SPA}
    sleep  1s
    mouse over  ${SHOP_TAB_SPA}

Select Bundle option-Spanish
    wait until element is enabled  ${BUNDLE_SPA}
    click link  ${BUNDLE_SPA}

Select Internet option-Spanish
    wait until element is enabled  ${INTERNET_SPA}
    click link  ${INTERNET_SPA}

Select Phone option-Spanish
    wait until element is enabled  ${PHONE_SPA}
    click link  ${PHONE_SPA}

Select Video/TV option-Spanish
    wait until element is enabled  ${VIDEO/TV_SPA}
    click link  ${VIDEO/TV_SPA}

Select Digital Essentials option-Spanish
    wait until element is enabled  ${DIGITAL_ESSENTIALS_SPA}
    click link  ${DIGITAL_ESSENTIALS_SPA}

Select Frontier Secure option-Spanish
    wait until element is enabled  ${FRONTIER_SECURE_SPA}
    click link  ${FRONTIER_SECURE_SPA}

Select Moving option-Spanish
    wait until element is enabled  ${MOVING_SPA}
    click link  ${MOVING_SPA}

Verify Spanish Text is displayed on Bundle page
    wait until page contains  Llama al
#    page should contain  Servicio de Internet de Alta Velocidad de Frontier
    page should contain  Llama al

Verify Spanish Text is displayed on Internet page
    wait until page contains  Llama al
#    page should contain  Servicios de Internet de Alta Velocidad de Frontier
    page should contain  Llama al

Verify Spanish Text is displayed on Phone page
    wait until page contains  Llama al
#    page should contain  Frontier Phone y Frontier TV
    page should contain  Llama al

Verify Spanish Text is displayed on Video/TV page
    wait until page contains  Llama al
#    page should contain  Servicios Frontier Video
    page should contain  Llama al

Verify Spanish Text is displayed on Frontier Secure page
    wait until page contains  Frontier Secure
    page should contain  Llama al

#Verify Spanish Text is displayed on Degital Essentials page
#    wait until page contains  Frontier Secure
#    page should contain  Frontier Secure es la decisión inteligente para tu hogar y tu vida
#    page should contain  Llama al

Verify Spanish Text is displayed on Moving page
    wait until page contains  Llama al
    page should contain  Llama al