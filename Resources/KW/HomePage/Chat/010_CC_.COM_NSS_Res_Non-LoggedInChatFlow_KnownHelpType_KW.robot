*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../PO/Chat.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC10

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the new Multi-Language Toggle on the Residential Home page
    Select Multi-Language Toggle for Spanish Language

Home page should display in Spanish and toggle display 'English'
    Verify Toggle display English

Select the Contact Us option from the Support 2nd Tier Nav Tab
    mouse over on support tab-spanish
    select contact us option-spanish
#    wait until element is enabled  css=[class="fa-custom fa-custom-contact"]
#    wait until element is visible  css=[class="fa-custom fa-custom-contact"]
#    click element  css=[class="fa-custom fa-custom-contact"]

Select the More Contacts & Languages Tab
    wait until element is enabled  xpath=//div[@id='morecontacts-tab']/a
    click element  xpath=//div[@id='morecontacts-tab']/a
    sleep  2s
Select Residential from the Customer Type field
    wait until element is enabled  css=#collapseOne-morecontacts [value="Residential"]+label span
    click element  css=#collapseOne-morecontacts [value="Residential"]+label span
    sleep  2s
Select Internet from the Service Type field (or any other Service Type)
    wait until element is enabled  css=#collapseTwo-morecontacts [value="Internet"]+label span
    click element  css=#collapseTwo-morecontacts [value="Internet"]+label span
    sleep  2s
Select Frontier FIOS from the Product Type field (or any other Product Type)
    wait until element is enabled  css=#collapseThree-morecontacts [value="Frontier-FiOS"]+label span
    click element  css=#collapseThree-morecontacts [value="Frontier-FiOS"]+label span
    sleep  2s

Select the floating Chat ICON
    Click Chat