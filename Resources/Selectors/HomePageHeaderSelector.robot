*** Settings ***
Library  Selenium2Library  60

*** Variables ***
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                           Header Shop
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${SHOP_TAB}  id=ecomm-rv-anchor-Shop
${MY_ACCOUNT_TAB}  id=ecomm-rv-anchor-MyAccount
${BUNDLE}  id=ecomm-rv-anchor-Bundles
${INTERNET_OPA}  id=ecomm-rv-anchor-Internet
${PHONE}  id=ecomm-rv-anchor-Phone
${VIDEO/TV}  css=[id="ecomm-rv-anchor-Video/TV"]
${DIGITAL_ESSENTIALS}  link=Digital Essentials
${FRONTIER_SECURE}  id=ecomm-rv-anchor-FrontierSecure
#-------------Frontier Secure Validations Start-------------#
${FRONTIER_CONTEMT_ANYWHERE_LEARN_MORE_BTN}  xpath=//h2[text()='Frontier Content Anywhere']/following-sibling::p[2]/a
${DITITAL_LIVING_LEARN_MORE_BTN}  xpath=//a[text()='Digital Living']/../following-sibling::div[2]/a
${FRONTIER_IDENTITY_PROTECTION_LEARN_MORE_BTN}  xpath=//a[text()='Frontier Identity Protection']/../following-sibling::div[2]/a
${FRONTIER_MULTI_DEVICE_SECURITY_LEARN_MORE_BTN}  xpath=//a[text()='Frontier Multi-Device Security']/../following-sibling::div[2]/a
${FRONTIER_PREMIUM_TECHNICAL_SUPPORT_LEARN_MORE_BTN}  xpath=//a[text()='Frontier Premium Technical Support']/../following-sibling::div[2]/a
#-------------Frontier Secure Validations End-------------#
${MOVING}  id=ecomm-rv-anchor-Moving

#----------Shop spanish---------------#
${SHOP_TAB_SPA}  css=#ecomm-rv-anchor-Comprar
${BUNDLE_SPA}  id=ecomm-rv-anchor-Paquetes
${INTERNET_SPA}  id=ecomm-rv-anchor-Internet
${PHONE_SPA}  id=ecomm-rv-anchor-Tel&#233;fono
${VIDEO/TV_SPA}  id=ecomm-rv-anchor-Video/TV
${DIGITAL_ESSENTIALS_SPA}  id=ecomm-rv-anchor-Art&#237;culosdigitalesesenciales
${MOVING_SPA}  id=ecomm-rv-anchor-Mudanzas
${FRONTIER_SECURE_SPA}  id=ecomm-rv-anchor-FrontierSecure
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                           Header My Account
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${MY_ACCOUNT_TAB}  css=#ecomm-rv-anchor-MyAccount
${ACCOUNT_SUMMARY}  css=#ecomm-rv-anchor-AccountSummary
${MY_PAYMENTS}  css=#ecomm-rv-anchor-MyPayments
${MY_BILLS}  css=#ecomm-rv-anchor-MyBills
${MY_PROFILE}  css=#ecomm-rv-anchor-MyProfile
${MY_FRONTIER_MOBILE_APP}  css=#ecomm-rv-anchor-MyFrontierMobileApp

#----------My Account Spanish Language-------------#
${MY_ACCOUNT_TAB_SPA}  css=#ecomm-rv-anchor-Micuenta
${ACCOUNT_SUMMARY_SPA}  css=#ecomm-rv-anchor-Resumendecuenta
${MY_PAYMENTS_SPA}  css=#ecomm-rv-anchor-Mispagos
${MY_BILLS_SPA}  css=#ecomm-rv-anchor-Misfacturas
${MY_PROFILE_SPA}  css=#ecomm-rv-anchor-Miperfil
${MY_FRONTIER_MOBILE_APP_SPA}  css=[id='ecomm-rv-anchor-Aplicaci&#243;nm&#243;vilMyFrontier']

${CANCEL_BTN}  xpath=//button[contains(text(),'Cancel')]
${SIGN_IN_BTN}  xpath=//button[contains(text(),'Sign In')]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Header Support
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${SUPPORT_TAB}  css=#ecomm-rv-anchor-Support
${HELP_CENTER}  css=#ecomm-rv-anchor-HelpCenter
${SUPPORT_WIZARD}  css=#ecomm-rv-anchor-SupportWizard
${TROUBLE_TICKET_STATUS}  css=#ecomm-rv-anchor-TroubleTicketStatus
${ORDER_STATUS}  css=#ecomm-rv-anchor-OrderStatus
${CONTACT_US}  css=#ecomm-rv-anchor-ContactUs

#---------Support Spanish--------------------------#
${SUPPORT_TAB_SPA}  css=#ecomm-rv-anchor-Soporte
${HELP_CENTER_SPA}  css=#ecomm-rv-anchor-Centrodeayuda
${SUPPORT_WIZARD_SPA}  css=#ecomm-rv-anchor-Asistentedesoporte
${TROUBLE_TICKET_STATUS_SPA}  css=#ecomm-rv-anchor-Estadodelaboletadelproblema
${ORDER_STATUS_SPA}  css=#ecomm-rv-anchor-Estadodelpedido
${CONTACT_US_SPA}  css=[id='ecomm-rv-anchor-Cont&#225;ctanos']