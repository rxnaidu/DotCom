*** Settings ***
Documentation  Ftr.com-Non Self Service-Resedential-Shop-Bundles - All Test Cases
Library  Selenium2Library  60
Resource  ../Resources/PO/shopBundleKeyword.robot


#Test Setup  Common.Begin Web Test
#Test Teardown  Common.End Web Test

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_Shop_Bundles_Multi-Language_Online & Mobile_Language Toggle Display on Bundle Product Page
    [Documentation]  This Test Case is to validate the display of the Multi-Language (Spanish) Toggle on the Frontier.com Bundle Product page for NON Self Service User
    [Tags]  Test1

    #  Step1: Login to the Ftr.com home page using valid URL and Password
    Login to Ftr.com

    #  Step2: Select the Change Widget in the Geolocation field in the Header
    Select "change" option from header

    #  Step3: Enter valid Copper Zip Code and Select the Check Availability Button
    Enter "Zip Code" and select "Check Availability" Button

    #  Step4: Select the Bundle option from the Shop Category Drop down
    Select "Bundle" from Shop Category Drop down

    #  Step5: Validate the display of the new Multi-Language Toggle on the Bundle Product page
    #The New Multi-Language Toggle (Spanish/English) should display in the Header to the right of the Geolocation indicator
    Verify Multi-Language Toggle displayed in Header

002_CC_.COM_ENGLISH_NSS_Res_Shop_Bundles_Multi-Language_Online & Mobile_Language Toggle Functionality on Bundle Product Page
    [Documentation]  This Test Case is to validate the Functionality of the Multi-Language (Spanish) Toggle on the Frontier.com Bundle Product page for NON Self Service User
    [Tags]  Test2

    #  Step1: Login to the Ftr.com home page using valid URL and Password
    Login to Ftr.com

    #  Step2: Select the Change Widget in the Geolocation field in the Header
    Select "change" option from header

    #  Step3: Enter valid Copper Zip Code and Select the Check Availability Button
    Enter "Zip Code" and select "Check Availability" Button

    #   Step4: Select the Bundle option from the Shop Category Drop down
    Select "Bundle" from Shop Category Drop down

    #   Step5: Select the new Multi-Language Toggle on the Bundle Product page
    #The Bundle Product Page should now display in Spanish instead of English
    Select Multi-Language Toggle from header
    Verify Spanish should display on Bundle product page

003_CC_.COM_ENGLISH_NSS_Res_Shop_Bundles_Verification of Bundle Product Page Live Chat Links
    [Documentation]  Verification of Bundle Product Page Live Chat Links
    [Tags]  Test3

    #   Step1: In a browser, enter the URL- https---qat03.frontier.com
    Login to Ftr.com

    #   Step2: Click the location module and enter the zip code 46835. Click "Check Availability."
    #The location module turns green and displays the text "Fort Wayne, IN."
    Select "change" option from header
    Enter Zip Code: 46835 and Select Check Availability Button
    Verify location module displays "Fort Wayne, IN"

    #   Step NA: Select the Bundle option from the Shop Category Drop down -- Missing step in QC
    Select "Bundle" from Shop Category Drop down


    #   Step3: In the same browser window or tab, enter thehttps://qat03.frontier.com/shop/bundles/fios
    #The Product page for FiOS Bundles displays. In the top section of the page, below the header, text, a phone number and a "Live Chat" link are shown
    Verify Bundle text present
    Verify Phone number link present
    Verify Chat Live link present

    #   Step4: Click the "Live Chat" link.
    #comment  Click "Live Chat" link which is present next to Call number opton at the top the window.
    Click Live Chat link1

    #   Step5: Check the Frontier logo at the top left corner of the chat window.
    Verify "Frontier" logo present in chat window

    #   Step6: Close the "Live Chat" window.
    Close "Live Chat" window

    #   Step7: Scroll down to the bottom section of the page, just above the footer. Click the "Live Chat" link.
    comment  Scroll down to the bottom section of the page, just above the footer. Click "Live Chat" link2
    Click Live Chat link2

    #   Step8: Check the Frontier logo at the top left corner of the chat window.
    Verify "Frontier" logo present in chat window

    #   Step9: Close the "Live Chat" window.
    Close "Live Chat" window

    #   Step10: Click the location module and enter the zip code 61802. Click "Check Availability."
    Select "change" option from header
    Enter Zip Code: 61802 and Select Check Availability Button

    #   Step11: In the same browser window or tab, enter the URL- http---qat01.frontier.com-shop-bundles-dish-bundle-leader
    Select "Bundle" from Shop Category Drop down

    #   Step12: Click the "Live Chat" link.
    Click Live Chat link1

    #   Step13: Check the Frontier logo at the top left corner of the chat window.
    Verify "Frontier" logo present in chat window

#   Step14: Close the "Live Chat" window.
    Close IL "Live Chat" window
#   Step15: Scroll down to the bottom section of the page, just above the footer. Click the "Live Chat" link.
    Click Live Chat link2
#   Step16: Check the Frontier logo at the top left corner of the chat window.
    Verify "Frontier" logo present in chat window
#   Step17: Close the "Live Chat" window.
    Close IL "Live Chat" window
#   Step18: Click the location module and enter the zip code 14626. Click "Check Availability."
    Select "change" option from header
    Enter Zip Code: 14626 and Select Check Availability Button
#   Step19: In the same browser window or tab, enter the URL- http---qat01.frontier.com-shop-bundles-dish-bundle-challenger
    Select "Bundle" from Shop Category Drop down
#   Step20: Click the "Live Chat" link.
    Click Live Chat link1
#   Step21: Check the Frontier logo at the top left corner of the chat window.
    Verify "Frontier" logo present in chat window
#   Step22: Close the "Live Chat" window.
    Close HR "Live Chat" window
#   Step23: Scroll down to the bottom section of the page, just above the footer. Click the "Live Chat" link.
    Click Live Chat link2
#   Step24: Check the Frontier logo at the top left corner of the chat window.
    Verify "Frontier" logo present in chat window
#   Step25: Close the "Live Chat" window.
    Close HR "Live Chat" window
#   Step26: Click the location module and enter the zip code 06515. Click "Check Availability."
    Select "change" option from header
    Enter Zip Code: 06515 and Select Check Availability Button
#   Step27: In the same browser window or tab, enter the URL- http---qat01.frontier.com-shop-bundles-frontier-tv
    Select "Bundle" from Shop Category Drop down
#   Step28: Click the "Live Chat" link.
    Click Live Chat link1
#   Step29: Check the Frontier logo at the top left corner of the chat window.
    Verify "Frontier" logo present in chat window
#   Step30: Close the "Live Chat" window.
    Close BB "Live Chat" window
#   Step31: Scroll down to the bottom section of the page, just above the footer. Click the "Live Chat" link.
    Click Live Chat link2
#   Step32: Check the Frontier logo at the top left corner of the chat window.
    Verify "Frontier" logo present in chat window
#   Step33: Close the "Live Chat" window.
    Close BB "Live Chat" window





