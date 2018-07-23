*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
valid username and password
    Input text       xpath=//*[@id="homebody"]/div[2]/div/form/div[1]/div/input     mlfadmin
    #sleep   2s
    input text      xpath=//*[@id="homebody"]/div[2]/div/form/div[2]/div/input      mlf@123
    #sleep   2s
    click element   xpath=//*[@id="homebody"]/div[2]/div/form/div[3]/button
    sleep  3s
    wait until page contains  Hello, mlfadmin


valid username and invalid password
    Input text       xpath=//*[@id="homebody"]/div[2]/div/form/div[1]/div/input     mlfadmin
    #sleep   2s
    input text      xpath=//*[@id="homebody"]/div[2]/div/form/div[2]/div/input      123456
    #sleep   2s
    click element   xpath=//*[@id="homebody"]/div[2]/div/form/div[3]/button
    sleep   2s
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button


invalid username and valid password
    Input text       xpath=//*[@id="homebody"]/div[2]/div/form/div[1]/div/input     mlfadminsjhagd
    #sleep   2s
    input text      xpath=//*[@id="homebody"]/div[2]/div/form/div[2]/div/input      mlf@123
    #sleep   2s
    click element   xpath=//*[@id="homebody"]/div[2]/div/form/div[3]/button
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button


invalid username and invalid password
    Input text       xpath=//*[@id="homebody"]/div[2]/div/form/div[1]/div/input     mlfadminSdsdh
    #sleep   2s
    input text      xpath=//*[@id="homebody"]/div[2]/div/form/div[2]/div/input      mlf@123sdhFS
    #sleep   2s
    click element   xpath=//*[@id="homebody"]/div[2]/div/form/div[3]/button
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button


empty username and empty password
    #Input text       xpath=//*[@id="homebody"]/div[2]/div/form/div[1]/div/input     mlfadmin
    #input text      xpath=//*[@id="homebody"]/div[2]/div/form/div[2]/div/input      mlf@123
    click element   xpath=//*[@id="homebody"]/div[2]/div/form/div[3]/button
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button


empty username and valid password
    #Input text       xpath=//*[@id="homebody"]/div[2]/div/form/div[1]/div/input     mlfadmin
    input text      xpath=//*[@id="homebody"]/div[2]/div/form/div[2]/div/input      mlf@123
    #sleep   2s
    click element   xpath=//*[@id="homebody"]/div[2]/div/form/div[3]/button
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button

valid username and empty password
    Input text       xpath=//*[@id="homebody"]/div[2]/div/form/div[1]/div/input     mlfadmin
    #sleep   2s
    #input text      xpath=//*[@id="homebody"]/div[2]/div/form/div[2]/div/input      mlf@123
    click element   xpath=//*[@id="homebody"]/div[2]/div/form/div[3]/button
    wait until page contains element  //*[@id="homebody"]/div[2]/div/form/div[3]/button