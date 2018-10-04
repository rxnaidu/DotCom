*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${AUTOPAY_POPUP}  css=.modal-bg-cyan .modal-dialog .boltoncontainer a:nth-child(1)
${INTERNET}  xpath=//h5[text()='Internet']
${PHONE}  xpath=//h5[text()='Phone']
${VIDEO}  xpath=//h5[text()='Video']
${ACCOUNT}  xpath=//div[@id="summary-section"]//select[@id='ddAccts']
${INTERNET_UPGRADE_BTN}  id=upgrade-internet-button
${VIDEO_UPGRADE_BTN}  id=upgrade-video-button
${ADD_VIDEO_SHOP_BTN}  id=add-video-button
${UPGRADE_POP_UP}  xpath=//a[@ng-click="$dismiss();"]/span
