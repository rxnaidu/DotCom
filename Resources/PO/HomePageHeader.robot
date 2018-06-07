*** Settings ***
Library  Selenium2Library  60
Resource  ../Selectors/HomePageHeaderSelector.robot

*** Keywords ***
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Header Shop English
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
Mouse over on Shop Tab
    wait until page contains  Shop
    wait until element is visible  ${SHOP_TAB}
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
    click element  ${MOVING}

#----------------Internet Products Validations Start-------------------------#

Select Simply BB Ultra
    wait until element is enabled  ${SIMPLY_BB_ULTRA}
    click element  ${SIMPLY_BB_ULTRA}
    wait until page contains  Broadband Ultra

Select Simply FIOS 50/50
    wait until element is enabled  ${SIMPLY_FIOS_50/50}
    click element  ${SIMPLY_FIOS_50/50}
    wait until page contains  50/50 Internet Package

Select Simply FIOS 100/100
    wait until element is enabled  ${SIMPLY_FIOS_100/100}
    click element  ${SIMPLY_FIOS_100/100}
    wait until page contains  100/100 Internet Package

#----------------Internet Products Validations End-------------------------#

#----------------Frontier Secure Products Validations Start-------------------------#
Select Frontier Content Anywhere
    #Digital Living
    wait until element is enabled  ${DITITAL_LIVING_LEARN_MORE_BTN}
    wait until element is visible  ${DITITAL_LIVING_LEARN_MORE_BTN}
    click element  ${DITITAL_LIVING_LEARN_MORE_BTN}

    #Frontier Content Anywhere
    wait until element is enabled  ${FRONTIER_CONTEMT_ANYWHERE_LEARN_MORE_BTN}
    click element  ${FRONTIER_CONTEMT_ANYWHERE_LEARN_MORE_BTN}

Select Frontier Identity Protection
    wait until element is enabled  ${FRONTIER_IDENTITY_PROTECTION_LEARN_MORE_BTN}
    click element  ${FRONTIER_IDENTITY_PROTECTION_LEARN_MORE_BTN}

Select Multi-Device Security
    wait until element is enabled  ${FRONTIER_MULTI_DEVICE_SECURITY_LEARN_MORE_BTN}
    click element  ${FRONTIER_MULTI_DEVICE_SECURITY_LEARN_MORE_BTN}

Select Frontier Premium Technical Support
    wait until element is enabled  ${FRONTIER_PREMIUM_TECHNICAL_SUPPORT_LEARN_MORE_BTN}
    click element  ${FRONTIER_PREMIUM_TECHNICAL_SUPPORT_LEARN_MORE_BTN}

#----------------Frontier Secure Products Validations End-------------------------#

#----------------Internet Products FCC BB Disclosure Document Start-------------------------#
Select FCC BB Diclosure Document
    wait until element is enabled  ${FCC_BB_DISCLOSURE_DOC_LINK}
    click element  ${FCC_BB_DISCLOSURE_DOC_LINK}

#----------------Internet Products FCC BB Disclosure Document  End-------------------------#

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Header Shop Spanish
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

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

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Header My Account
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

Mouse over on My Account Tab
    wait until page contains  My Account
    wait until element is enabled  ${MY_ACCOUNT_TAB}
    sleep  2s
    focus  ${MY_ACCOUNT_TAB}
    sleep  2s
    mouse over   ${MY_ACCOUNT_TAB}

Verify My Account sub Tabs are displayed
    wait until element is enabled  ${MY_ACCOUNT_TAB}
    sleep  2s
    page should contain  Account Summary
    page should contain  My Payments
    page should contain  My Bills
    page should contain  My Profile
    page should contain  MyFrontier Mobile App

Verify Sign In page fields
    wait until element is visible  ${CANCEL_BTN}
    wait until page contains  Sign In

    page should contain  Frontier ID / Username
    page should contain  Password
    page should contain button   ${CANCEL_BTN}  CANCEL
#    page should contain button   ${SIGN_IN_BTN}  SIGN IN
#    page should contain  SIGN IN


Select Account Summary option
    wait until element is enabled  ${ACCOUNT_SUMMARY}
    click link  ${ACCOUNT_SUMMARY}

Select My Payments option
    wait until element is enabled  ${MY_PAYMENTS}
    click link  ${MY_PAYMENTS}

Select My Bills option
    wait until element is enabled  ${MY_BILLS}
    click link  ${MY_BILLS}

Select My Profile option
    wait until element is enabled  ${MY_PROFILE}
    click link  ${MY_PROFILE}

Select My Frontier Mobile App option
    wait until element is enabled  ${MY_FRONTIER_MOBILE_APP}
    click link  ${MY_FRONTIER_MOBILE_APP}



#----------------SPANISH  LANGUAGE--------------------------#
Mouse over on My Account Tab-Spanish
    wait until page contains  Comprar
    wait until element is enabled  ${MY_ACCOUNT_TAB_SPA}
    sleep  2s
    focus  ${MY_ACCOUNT_TAB_SPA}
    sleep  2s
    mouse over  ${MY_ACCOUNT_TAB_SPA}

Select Account Summary option-Spanish
    sleep  3s
    wait until element is enabled  ${ACCOUNT_SUMMARY_SPA}
    click link  ${ACCOUNT_SUMMARY_SPA}

Select My Payments option-Spanish
    sleep  3s
    wait until element is enabled  ${MY_PAYMENTS_SPA}
    click link  ${MY_PAYMENTS_SPA}

Select My Bills option-Spanish
    sleep  3s
    wait until element is enabled  ${MY_BILLS_SPA}
    click link  ${MY_BILLS_SPA}

Select My Profile option-Spanish
    sleep  3s
    wait until element is enabled  ${MY_PROFILE_SPA}
    click link  ${MY_PROFILE_SPA}

Select My Frontier Mobile App option-Spanish
    sleep  3s
    wait until element is enabled  ${MY_FRONTIER_MOBILE_APP_SPA}
    click link  ${MY_FRONTIER_MOBILE_APP_SPA}

Verify Spanish Text is displayed on Account Summary page
    wait until page contains  Iniciar sesión
    page should contain  Contraseña
    page should contain  Frontier ID/Nombre de usuario

Verify Spanish Text is displayed on My Payments page
    wait until page contains  Iniciar sesión
    page should contain  Inicia sesión con tu Frontier ID o con el nombre de usuario para el pago de facturas en línea.
    page should contain  Frontier ID/Nombre de usuario

Verify Spanish Text is displayed on My Bills page
    wait until page contains  Iniciar sesión
    page should contain  Frontier ID/Nombre de usuario
    page should contain  Contraseña

Verify Spanish Text is displayed on My Profile page
    wait until page contains  Iniciar sesión
    page should contain  Inicia sesión con tu Frontier ID o con el nombre de usuario para el pago de facturas en línea.
    page should contain  Frontier ID/Nombre de usuario

Verify Spanish Text is displayed on My Frontier Mobile App page
    wait until page contains  MyFrontier
    page should contain  Aplicación Móvil
    page should contain  La aplicación móvil MyFrontier facilita el que puedas acceder a tu

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Header Support
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
Mouse over on Support Tab
    wait until page contains  Support
    wait until element is enabled  ${SUPPORT_TAB}
    sleep  1s
    focus  ${SUPPORT_TAB}
    sleep  1s
    mouse over  ${SUPPORT_TAB}

Verify support sub Tabs are displayed
    wait until element is enabled  ${SUPPORT_TAB}
    sleep  2s
    page should contain  Help Center
    page should contain  Support Wizard
    page should contain  Trouble Ticket Status
    page should contain  Order Status
    page should contain  Contact Us

Select Help Center option
    wait until element is enabled  ${HELP_CENTER}
    click link  ${HELP_CENTER}

Select Support Wizard option
    wait until element is enabled  ${SUPPORT_WIZARD}
    click link  ${SUPPORT_WIZARD}

Select Trouble Ticket Status option
    wait until element is enabled  ${TROUBLE_TICKET_STATUS}
    click link  ${TROUBLE_TICKET_STATUS}

Select Order Status option
    wait until element is enabled  ${ORDER_STATUS}
    click link  ${ORDER_STATUS}

Select Contact Us option
    wait until element is enabled  ${CONTACT_US}
    click link  ${CONTACT_US}


#----------------SPANISH  LANGUAGE--------------------------#
Mouse over on Support Tab-Spanish
    wait until page contains  Comprar
    wait until element is enabled  ${SUPPORT_TAB_SPA}
    sleep  2s
    focus  ${SUPPORT_TAB_SPA}
    sleep  2s
    mouse over  ${SUPPORT_TAB_SPA}

Select Help Center option-Spanish
    wait until element is enabled  ${HELP_CENTER_SPA}
    click link  ${HELP_CENTER_SPA}

Select Support Wizard option-Spanish
    wait until element is enabled  ${SUPPORT_WIZARD_SPA}
    click link  ${SUPPORT_WIZARD_SPA}

Select Trouble Ticket Status option-Spanish
    wait until element is enabled  ${TROUBLE_TICKET_STATUS_SPA}
    click link  ${TROUBLE_TICKET_STATUS_SPA}

Select Order Status option-Spanish
    wait until element is enabled  ${ORDER_STATUS_SPA}
    click link  ${ORDER_STATUS_SPA}

Select Contact Us option-Spanish
    wait until element is enabled  ${CONTACT_US_SPA}
    click link  ${CONTACT_US_SPA}

Verify Spanish Text is displayed on Help Center page
    wait until page contains  soporte
    page should contain  soporte

Verify Spanish Text is displayed on Support Wizard page
    wait until page contains  Asistente de soporte
    page should contain  Selecciona alguna de las siguientes opciones
    page should contain  Frontier ID

Verify Spanish Text is displayed on Trouble Ticket Status page
    wait until page contains  Estado de la boleta
    page should contain  Centro de ayuda
    page should contain  Cuenta

Verify Spanish Text is displayed on Order Status page
    wait until page contains  Estado del pedido
    page should contain  Cuenta
    page should contain  Centro de ayuda

Verify Spanish Text is displayed on Contact Us page
    wait until page contains  Chat Live
    page should contain  Programar la llamada
    page should contain  Temas de ayuda y soporte