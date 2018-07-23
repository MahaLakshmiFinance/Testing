*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Clicking On The Link Accessories
    click link  xpath=//*[@id="link6"]
    sleep  4s
Button Purchase
    sleep  1s
Clickin On The Button Purchase In Accessories
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[1]/div[1]/label
    sleep  1s

Giving The MOdel Of The Item IN Accesssories
    sleep  1s
    input text  name=username  0123456789
    focus  xpath=//*[@id="in_serial"]
    input text  name=quantity  15
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  RSB
    input text  name=model_name  2212
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    Sleep  5s
    alert should be present  PLEASE ENTER TOTAL COST.

Giving The Date In Accessories
    sleep  1s
    input text  name=username  0123456789
    focus  xpath=//*[@id="in_serial"]
    input text  name=quantity  1
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  RSB
    input text  name=model_name  2212
    input text  name=date  1546-45-2

    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    Sleep  5s
    alert should be present  PLEASE ENTER TOTAL COST.
Giving The Total Amount In Accessories Wrong
    sleep  1s
    input text  name=username  0123456789
    focus  xpath=//*[@id="in_serial"]
    input text  name=quantity  1
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  RSB
    input text  name=model_name  2212
    input text  name=date  1546-45-2
    input text  name=cost  2332e
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    Sleep  5s
    alert should not be present  PLEASE ENTER TOTAL COST.


Giving The Total Amount In Accessories FLWS
    sleep  1s
    input text  name=username  0123456789
    focus  xpath=//*[@id="in_serial"]
    input text  name=quantity  1
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  FLWMS
    input text  name=model_name  2212
    input text  name=date  1546-45-2
    input text  name=cost  233221

    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    Sleep  5s
    alert should be present  PURCHASE COMPLETED.
Giving The Total Amount In Accessories FLWMC
    sleep  1s
    input text  name=username  0123456789
    focus  xpath=//*[@id="in_serial"]
    input text  name=quantity  1
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  FLWMC
    input text  name=model_name  2212
    input text  name=date  2001-05-2
    input text  name=cost  233221

    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    Sleep  5s
    alert should be present  PURCHASE COMPLETED.
Giving The Total Amount In Accessories TLWMC
    sleep  1s
    input text  name=username  0123456789
    focus  xpath=//*[@id="in_serial"]
    input text  name=quantity  1
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  TLWMC
    input text  name=model_name  2212
    input text  name=date  2001-04-2
    input text  name=cost  233221

    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    Sleep  5s
    alert should be present  PURCHASE COMPLETED.
Button Sell
    sleep  5s
Clicking The Button Sell
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[1]/div[2]/label/span
    focus  xpath=//*[@id="inputFirstName"]
Giving Coustemer Id In The Accessories Wrong
    sleep  1s
    input text  name=username  8317681855
    focus  xpath=//*[@id="in_serial"]
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    alert should be present  PLEASE ADD THE CUSTOMER TO DATABASE FIRST.
Giving Coustemer Id In The Accessories
    sleep  1s
    input text  name=username  0123456789
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
    sleep  5s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    alert should be present  PLEASE SELECT SERIAL NUMBER.
Giving The Serealnumber In The Accessories
    sleep  1s
    input text  name=username  0123456789
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
    sleep  2s
    select from list by value  xpath=//*[@id="serial"]  201800001
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    sleep  5s
    current frame contains  Customer ID
Giving The DAte In The Accessories Wrong
    input text  name=username  0123456789
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
    sleep  2s
    select from list by value  xpath=//*[@id="serial"]  201800001
    input text  name=date  2019-05-w
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    sleep  5s
    current frame contains  Customer ID
Giving The DAte In The Accessories
    input text  name=username  0123456789
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
    sleep  2s
    select from list by value  xpath=//*[@id="serial"]  201800001
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input   2019-05-12
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    sleep  9s
    current frame contains  Customer ID
Giving THe Total Amount In THe Accessories Wrong
    input text  name=username  0123456789
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
    sleep  2s
    select from list by value  xpath=//*[@id="serial"]  201800001
    input text  name=date  2019-05-12
    input text  name=cost   6752
    sleep  9s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    focus  xpath=//*[@id="inputFirstName"]
    alert should be present  SUCESSFULLY SOLD THE PRODUCT
Giving THe Total Amount In THe Accessories
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[1]/div[2]/label/span
    focus  xpath=//*[@id="inputFirstName"]
    input text  name=username  0123456789
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
    sleep  2s
    focus  xpath=//*[@id="inputFirstName"]
    select from list by value  xpath=//*[@id="serial"]  201800002
    focus  xpath=//*[@id="inputFirstName"]
    input text  name=date  2019-05-12
    input text  name=cost  6752
    sleep  9s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/button
    alert should be present  SUCESSFULLY SOLD THE PRODUCT
