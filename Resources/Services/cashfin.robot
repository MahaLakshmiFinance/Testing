*** Settings ***

Library  SeleniumLibrary

*** Variables ***


${customer} =  0123456789

*** Keywords ***


Clicking Cash Finance
    click link  xpath=//*[@id="link3"]
    Sleep  2s

Giving Wrong Phone Number
    input text  xpath=//*[@id="inputFirstName"]  8317681878
    click button  //*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
    
Giving Right Phonenumber
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    click button  //*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert

Giving Only Amount
    input text  xpath=//*[@id="inputUsername"]  3000
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert

Giving Only Rateof Interest
    input text  xpath=//*[@id="inputNewPassword"]  1
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert

Giving Only Phonenumber And Amount
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputUsername"]  3000
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert

Giving only Phonenumber And Rate Ofinterest
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputNewPassword"]  1
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
Giving Only Fre
    input text  name=refno  453


Giving All
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputUsername"]  3000
    input text  xpath=//*[@id="inputNewPassword"]  1
    input text  name=refno  453
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
Giving Num3600
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputUsername"]  3600
    input text  xpath=//*[@id="inputNewPassword"]  1
    input text  name=refno  457
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
Giving num3100
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputUsername"]  3100
    input text  xpath=//*[@id="inputNewPassword"]  1
    input text  name=refno  456
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
Giving Num3020
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputUsername"]  3020
    input text  xpath=//*[@id="inputNewPassword"]  1
    input text  name=refno  458
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
Giving NUM3200
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputUsername"]  3200
    input text  xpath=//*[@id="inputNewPassword"]  1
    input text  name=refno  451
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
Giving NUM3201
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputUsername"]  3201
    input text  xpath=//*[@id="inputNewPassword"]  1
    input text  name=refno  451
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
Giving NUM3202
    input text  xpath=//*[@id="inputFirstName"]  ${customer}
    input text  xpath=//*[@id="inputUsername"]  3202
    input text  xpath=//*[@id="inputNewPassword"]  1
    input text  name=refno  451
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    Sleep  3s
    handle alert
