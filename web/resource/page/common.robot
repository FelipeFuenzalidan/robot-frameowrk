*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL} =    https://www.google.com
${BROWSER} =    chrome


*** Keywords ***
I go to google page
    open browser    ${URL}  ${BROWSER}
    maximize browser window
I close browser
    close browser

Open Browser To Home Page(Local)
	Open Browser  ${URL}  ${BROWSER}

Open Browser To Home Page
	[Arguments]  ${BROWSER}  ${BROWSER_VERSION}  ${OS}  ${OS_VERSION}
	Open Browser  url=${URL}  browser=chrome  alias=None  remote_url=http://felipefuenzalida2:kjFnxyp4kpQBpGFdustC@hub.browserstack.com:80/wd/hub  desired_capabilities=browser:${BROWSER},browser_version:${BROWSER_VERSION},os:${OS}, os_version:${OS_VERSION},resolution:1024x768

