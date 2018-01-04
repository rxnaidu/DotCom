*** Settings ***
Library  Selenium2Library  90

Resource  ../../Resources/KW/Reg/017_CC_.COM_archive_REG_RES_FCOM_Man_ECOMM_VideoHOPUpgrade_KW.robot
Resource  ../../Resources/PO/Common/common.robot

#Test Teardown  Common.End Web Test

*** Test Cases ***

Hop Updrade

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Verify user launches into Self Service Portal successfully

    Select close on auto payment popup

    Click on Upgrade button for Internet

    Click on [Upgrade] button for the package that the user wants to Hop on

#    Click on Yes

    Enter [Can be Reached] number and click [Update]

    Enter initial and click Complete order



