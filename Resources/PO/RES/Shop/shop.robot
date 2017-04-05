*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SHOP_TAB}  link=Shop
${MY_ACCOUNT_TAB}  link=My Account
${BUNDLE}  link=Bundles
${INTERNET}  link=Internet
${PHONE}  link=Phone
${VIDEO/TV}  link=Video/TV
${DIGITAL_ESSENTIALS}  link=Digital Essentials
${MOVING}  link=Moving

#----------spanish---------------#
${SHOP_TAB_SPA}  link=Comprar
${BUNDLE_SPA}  link=Paquetes
${INTERNET_SPA}  link=Internet
${PHONE_SPA}  link=Teléfono
${VIDEO/TV_SPA}  link=Video/TV
${DIGITAL_ESSENTIALS_SPA}  link=Artículos digitales esenciales
${MOVING_SPA}  link=Mudanzas

*** Keywords ***

Mouse over on Shop Tab
    wait until page contains  Shop
    wait until element is enabled  ${SHOP_TAB}
    sleep  2s
    focus  ${SHOP_TAB}
    sleep  2s
    wait until element is enabled  ${SHOP_TAB}
    mouse over  ${SHOP_TAB}

Verify Shop sub tabs are displayed
    wait until element is enabled  ${BUNDLE}
    sleep  2s

    page should contain  Bundles
    page should contain  Internet
    page should contain  Phone
    page should contain  Video/TV
    page should contain  Digital Essentials
    page should contain  Moving

Select Bundle option
#    sleep  3s
    wait until element is enabled  ${BUNDLE}
    click link  ${BUNDLE}

Select Internet option
    sleep  3s
    wait until element is enabled  ${INTERNET}
    click link  ${INTERNET}

Select Phone option
#    sleep  3s
    wait until element is enabled  ${PHONE}
    click link  ${PHONE}

Select Video/TV option
#    sleep  3s
    wait until element is enabled  ${VIDEO/TV}
    click link  ${VIDEO/TV}

Select Digital Essentials option
    wait until element is enabled  ${DIGITAL_ESSENTIALS}
    click link  ${DIGITAL_ESSENTIALS}

Select Moving option
    wait until element is enabled  ${DIGITAL_ESSENTIALS}
    click link  ${MOVING}

#----------------SPANISH  LANGUAGE--------------------------#
Mouse over on Shop Tab-Spanish
    wait until page contains  Comprar
    wait until element is enabled  ${SHOP_TAB_SPA}
    sleep  2s
    focus  ${SHOP_TAB_SPA}
    sleep  2s
    mouse over  ${SHOP_TAB_SPA}

Select Bundle option-Spanish
    sleep  3s
    wait until element is enabled  ${BUNDLE_SPA}
    click link  ${BUNDLE_SPA}

Select Internet option-Spanish
    sleep  3s
    wait until element is enabled  ${INTERNET_SPA}
    click link  ${INTERNET_SPA}

Select Phone option-Spanish
    sleep  3s
    wait until element is enabled  ${PHONE_SPA}
    click link  ${PHONE_SPA}

Select Video/TV option-Spanish
    sleep  3s
    wait until element is enabled  ${VIDEO/TV_SPA}
    click link  ${VIDEO/TV_SPA}

Select Digital Essentials option-Spanish
    sleep  3s
    wait until element is enabled  ${DIGITAL_ESSENTIALS_SPA}
    click link  ${DIGITAL_ESSENTIALS_SPA}

Select Moving option-Spanish
    sleep  3s
    wait until element is enabled  ${MOVING_SPA}
    click link  ${MOVING_SPA}

Verify Spanish Text is displayed on Bundle page
    wait until page contains  Combina internet
    page should contain  Servicio de Internet de Alta Velocidad de Frontier
    page should contain  Llama al

Verify Spanish Text is displayed on Internet page
    wait until page contains  Servicios de Internet de Alta
    page should contain  Servicios de Internet de Alta Velocidad de Frontier
    page should contain  Llama al

Verify Spanish Text is displayed on Phone page
    wait until page contains  Servicios Frontier Phone
    page should contain  Frontier Phone y Frontier TV
    page should contain  Llama al

Verify Spanish Text is displayed on Video/TV page
    wait until page contains  Servicios Frontier Video
    page should contain  Servicios Frontier Video
    page should contain  Llama al

Verify Spanish Text is displayed on Degital Essentials page
    wait until page contains  Frontier Secure
    page should contain  Frontier Secure es la decisión inteligente para tu hogar y tu vida
    page should contain  Llama al

Verify Spanish Text is displayed on Moving page
    wait until page contains  Llama al
    page should contain  Preguntas frecuentes
    page should contain  Llama al