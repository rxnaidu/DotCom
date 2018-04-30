*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${MY_ACCOUNT_TAB}  css=#ecomm-rv-anchor-MyAccount
${ACCOUNT_SUMMARY}  css=#ecomm-rv-anchor-AccountSummary
${MY_PAYMENTS}  css=#ecomm-rv-anchor-MyPayments
${MY_BILLS}  css=#ecomm-rv-anchor-MyBills
${MY_PROFILE}  css=#ecomm-rv-anchor-MyProfile
${MY_FRONTIER_MOBILE_APP}  css=#ecomm-rv-anchor-MyFrontierMobileApp

#----------Spanish Language-------------#
${MY_ACCOUNT_TAB_SPA}  css=#ecomm-rv-anchor-Micuenta
${ACCOUNT_SUMMARY_SPA}  css=#ecomm-rv-anchor-Resumendecuenta
${MY_PAYMENTS_SPA}  css=#ecomm-rv-anchor-Mispagos
${MY_BILLS_SPA}  css=#ecomm-rv-anchor-Misfacturas
${MY_PROFILE_SPA}  css=#ecomm-rv-anchor-Miperfil
${MY_FRONTIER_MOBILE_APP_SPA}  css=[id='ecomm-rv-anchor-Aplicaci&#243;nm&#243;vilMyFrontier']

${CANCEL_BTN}  xpath=//button[contains(text(),'Cancel')]
${SIGN_IN_BTN}  xpath=//button[contains(text(),'Sign In')]

*** Keywords ***

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
