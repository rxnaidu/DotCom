*** Settings ***
Library  Selenium2Library  60
Resource  ../../../../Resources/KW/HomePage/Shop/DE/015_CC_.COM_NSS_Res_Shop_DE_VerificationofFrontierSecureProductPageLiveChatLinks_KW.robot
Resource  ../../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
Shop Bundles Validations

    User launch Ftr.com application using URL

    Select the Frontier Secure option from the Shop Category Drop down

    Click the location module and enter the zip code 14626 and Click Check Availability

    Validate Floating Live Chat link is present on the page

    Validate Frontier logo at the top left corner of the chat window

    Validate Live Chat link which is presend just above the list of products on the page

    Validate Live Chat link which is present bottom section of the page

#    Click the location module and enter the zip code 61802 and Click Check Availability
#
#    Validate Floating Live Chat link is present on the page
#
#    Validate Frontier logo at the top left corner of the chat window
#
#    Validate Live Chat link which is presend just above the list of products on the page
#
#    Validate Live Chat link which is present bottom section of the page
#
#    Click the location module and enter the zip code 06515 and Click Check Availability
#
#    Validate Floating Live Chat link is present on the page
#
#    Validate Frontier logo at the top left corner of the chat window
#
#    Validate Live Chat link which is presend just above the list of products on the page
#
#    Validate Live Chat link which is present bottom section of the page
