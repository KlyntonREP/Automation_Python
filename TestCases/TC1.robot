*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  firefox
${url}   http://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    loginToAppplication
    close browser


*** Keywords ***
loginToAppplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email        clinkesh57@gmail.com
    input text  id:Password        Clinkesh@57
    click element   xpath://div[@class='buttons']//input[@type='submit']