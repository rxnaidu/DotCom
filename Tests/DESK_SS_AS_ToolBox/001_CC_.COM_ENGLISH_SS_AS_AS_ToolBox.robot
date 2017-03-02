*** Settings ***
Library  Selenium2Library  60

Resource  ../../Resources/KW/DESK_SS_AS_ToolBox/001_CC_.COM_ENGLISH_SS_AS_AS_ToolBox_KW.robot
Resource  ../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${USERNAME_INP}  ftrqat03+3@gmail.com
${PASSWORD_INP}  Password123

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_Shop_Bundles_Multi-Language_Online & Mobile_Language Toggle Display on Bundle Product Page

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button  ${USERNAME_INP}  ${PASSWORD_INP}

    Select Account Summary option under Account Summary

    Verify the display of the My Services Section under AccountSummary

    TR2.1- Validate when a Core Product is available on the account
     #.com to display the icon for the relevant Core Product; ie. (Phone, Internet, Video, Frontier Secure)

    TR4.1- Verify Frontier.com to display Billing Product Name
     #based on Billing Product Name returned in new ESB service from getAccountFFM ( e.g. Display Product Name as shown on the bill, Under Internet- Display Simply Broadband Max) ???

    TR4.2- Verify For products without a SKU
    #(e.g. with Generic SKU), Frontier.com will display Product category name only (Internet, Phone, Video, Frontier Secure) – No Billing Product Name ???