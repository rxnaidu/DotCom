*** Settings ***
#what is this doing??????? - The [Documentation] setting allows you to set a free documentation for a test case. That text is shown in the command line output, as well as the resulting test logs and test reports.
Documentation  dotcom Automation
#what is this doing??????? - Library keyword for importing library files. Selenium2Library is a web testing library for Robot Framework. Importing all python built in fuctions for selenium web automation development. First 90 is default wait in seconds and second 90 is implicit wait.
Library  Selenium2Library  90  90

#what is this doing??????? - Resource keyword for importing user defined files. we are importing user defined file (common.robot) into this program which is there in Resources directory.
Resource  ../Resources/Common.robot

#what is this doing???????
Test Setup  Common.Begin Web Test

*** Variables ***
#what is this doing???????

*** Test Cases ***
User must sign in to place an order

    #what is this doing???????
    go to  https://qat03.frontier.com/
    #what is this doing???????
    maximize browser window
    #what is this doing???????
    Log Title

    input password  css=input[name="password"]  francis
    click button  css=button[type="submit"]

    wait until element is visible  link=Policies & Notifications
    wait until element is visible  link=Terms & Conditions
    wait until element is visible  link=Privacy Policy
    wait until element is visible  link=Store Locator
    wait until element is visible  link=Site Map

    click link  link=Bundles

    click link  id=ftrsecure1

    page should not contain  Page or File Not Found
