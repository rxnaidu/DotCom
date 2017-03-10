*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${MY_ACCOUNT_TAB}  link=My Account
${ACCOUNT_SUMMARY}  link=Account Summary
${MY_PAYMENTS}  link=My Payments
${MY_BILLS}  link=My Bills
${MY_PROFILE}  link=My Profile
${MY_FRONTIER_MOBILE_APP}  link=MyFrontier Mobile App

#----------Spanish Language-------------#
${MY_ACCOUNT_TAB_SPA}  link=Mi cuenta
${ACCOUNT_SUMMARY_SPA}  link=Resumen de cuenta
${MY_PAYMENTS_SPA}  link=Mis pagos
${MY_BILLS_SPA}  link=Mis facturas
${MY_PROFILE_SPA}  link=Mi perfil
${MY_FRONTIER_MOBILE_APP_SPA}  link=Aplicación móvil MyFrontier

*** Keywords ***

Mouse over on My Account Tab
    wait until page contains  My Account
    wait until element is enabled  ${MY_ACCOUNT_TAB}
    sleep  2s
    focus  ${MY_ACCOUNT_TAB}
    sleep  2s
    mouse over  ${MY_ACCOUNT_TAB}

Verify My Account sub Tabs are displayed
    wait until element is enabled  ${MY_ACCOUNT_TAB}
    sleep  2s
    page should contain  Account Summary
    page should contain  My Payments
    page should contain  My Bills
    page should contain  My Profile
    page should contain  MyFrontier Mobile App

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
