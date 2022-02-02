*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  http://www.google.com
${BROWSER}  chrome
${BROWSER_VERSION}  97.0
${OS}   Windows
${OS_VERSION}    10

*** Keywords ***
I go to page in browserstack
	Open Browser  url=${URL}  browser=${BROWSER}  remote_url=http://felipefuenzalida2:kjFnxyp4kpQBpGFdustC@hub.browserstack.com:80/wd/hub  desired_capabilities=browser:${BROWSER},browser_version:${BROWSER_VERSION},os:${OS}, os_version:${OS_VERSION}

