*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SUPPORT_TAB_SPA}  link=Soporte
${HELP_CENTER_SPA}  link=Centro de ayuda
${SUPPORT_WIZARD_SPA}  link=Asistente de soporte
${TROUBLE_TICKET_STATUS_SPA}  link=Estado de la boleta del problema
${ORDER_STATUS_SPA}  link=Estado del pedido
${CONTACT_US_SPA}  link=Contáctanos

${SUPPORT_TAB}  link=Support
${HELP_CENTER}  link=Help Center
${SUPPORT_WIZARD}  link=Support Wizard
${TROUBLE_TICKET_STATUS}  link=Trouble Ticket Status
${ORDER_STATUS}  link=Order Status
${CONTACT_US}  link=Contact Us

*** Keywords ***

Mouse over on Support Tab
    wait until page contains  Support
    wait until element is enabled  ${SUPPORT_TAB}
    sleep  2s
    focus  ${SUPPORT_TAB}
    sleep  2s
    mouse over  ${SUPPORT_TAB}

Verify support sub Tabs are displayed
    wait until element is enabled  ${SUPPORT_TAB}
    sleep  2s
    page should contain  Help Center
    page should contain  Support Wizard
    page should contain  Trouble Ticket Status
    page should contain  Order Status
    page should contain  Contact Us



#----------------SPANISH  LANGUAGE--------------------------#
Mouse over on Support Tab-Spanish
    wait until page contains  Comprar
    wait until element is enabled  ${SUPPORT_TAB_SPA}
    sleep  2s
    focus  ${SUPPORT_TAB_SPA}
    sleep  2s
    mouse over  ${SUPPORT_TAB_SPA}

Select Help Center option-Spanish
    sleep  3s
    wait until element is enabled  ${HELP_CENTER_SPA}
    click link  ${HELP_CENTER_SPA}

Select Support Wizard option-Spanish
    sleep  3s
    wait until element is enabled  ${SUPPORT_WIZARD_SPA}
    click link  ${SUPPORT_WIZARD_SPA}

Select Trouble Ticket Status option-Spanish
    sleep  3s
    wait until element is enabled  ${TROUBLE_TICKET_STATUS_SPA}
    click link  ${TROUBLE_TICKET_STATUS_SPA}

Select Order Status option-Spanish
    sleep  3s
    wait until element is enabled  ${ORDER_STATUS_SPA}
    click link  ${ORDER_STATUS_SPA}

Select Contact Us option-Spanish
    sleep  3s
    wait until element is enabled  ${CONTACT_US_SPA}
    click link  ${CONTACT_US_SPA}

Verify Spanish Text is displayed on Help Center page
    wait until page contains  Centro de ayuda
    page should contain  Caja de herramientas
    page should contain  Cuenta

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

