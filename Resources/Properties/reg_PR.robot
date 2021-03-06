*** Variables ***
#====================================================================================================================#
#---Tester can Modify only comment and uncomment for accessing qat01/02/03 related url
#====================================================================================================================#
#${RES_EXCEL_PATH}  C:/Development/Robot/DotCom/Resources/TestData/qat01.xlsx
#${RES_EXCEL_PATH}  C:/Development/Robot/DotCom/Resources/TestData/qat02.xlsx
#${RES_EXCEL_PATH}  C:/Development/Robot/DotCom/Resources/TestData/qat03.xlsx
#${RES_EXCEL_PATH}  C:/Development/Robot/DotCom/Resources/TestData/prod.xlsx
#====================================================================================================================#
#------Do not Touch---------Configuration keywords for accessing Excel sheet Test Data-----------
#====================================================================================================================#
#${RES_EXCEL_PATH}  ${SPACE}
#${URL}  ${SPACE}
#${EXCEL_LOC}  ${SPACE}
${SHEET_NAME}  REG
${USERNAME_SIGNIN}  SignIn_Username
${PASSWORD_SIGNIN}  SignIn_Password
${BROWSER_NAME}  Browser
#${DOTCOM_URL}  DotCom_Url
${DOTCOM_URL_PASSWORD}  DotCom_Url_Password
${ORDER_ID}  Order_Id

#TC03
${ACT_NUM}  Act_Num
${BILLING_DATE}  Billing_Date
${CURRENT_BILL_DATE}  Current_Bill_Date
${CURRENT_BALANCE}  Current_Balance
${TOTAL_BILL_AMOUNT}  Total_Bill_Amount
${NEW_CHARGES_DUE_DATE}  New_Charges_Due_Date

#TC04
${NAME_BUTTON_TEXT}  Name_Button_Text
${ROUTING_NUMBER}  Routing_Number
${BANK_ACCOUNT_NUMBER}  Bank_Accounting_Number
${RE_ENTER_BANK_ACCOUNT_NUMBER}  Re_Enter_Bank_Account_Number

#TC06
${LINK_BILLING_ACT_NUM}  Link_Act_Num
${LINK_BILLING_ACT_PIN}  Link_Act_Pin

#TC07
${UNLINK_ACT_NUM}  UnLink_Act_Num