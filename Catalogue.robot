*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    http://cataloguedsi-img-fadima18-dev.apps.sandbox.x8i5.p1.openshiftapps.com/
*** Test Cases ***
Test1_Verifier_Titre
    open browser     ${url}    ${browser}
    maximize browser window
    Sleep    1
    title should be    Catalogue d'offres de la DSI 2020
    Sleep    1
    close all browsers

Test2_Verifier_Text
    open browser      ${url}    ${browser}
    maximize browser window
    Sleep    1
    page should contain     Bienvenue sur le catalogue d'offres de la DSI 2020
    Sleep    1
    close all browsers
Test3_Verifier_Slide
    open browser      ${url}    ${browser}
    maximize browser window
    Sleep    1
    page should contain element    xpath=/html/body
    Sleep    1
    close all browsers

