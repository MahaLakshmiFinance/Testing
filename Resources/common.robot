*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser} =  gc
${Url} =  http://localhost/mlf/

*** Keywords ***
Begin Test
    open browser  ${Url}  ${Browser}
    sleep  3s
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button
    Maximize Browser Window

End Test
    close browser