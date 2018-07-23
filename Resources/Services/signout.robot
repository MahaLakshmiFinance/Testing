*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click Signout
    click link  xpath=//*[@id="link20"]
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button
    go back
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button
    go back
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button
    go back