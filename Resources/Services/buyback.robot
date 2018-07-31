*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${CUstomer Id} =  0123456789
*** Keywords ***

click buybackitems
    click element  xpath=//*[@id="link4"]
    wait until page contains element  name=exchange
Clicking Button Purchase
   click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[1]/div[1]/label/span
    sleep  4s
Giving the Customet id wrong P
    input text  xpath=//*[@id="inputFirstName"]  14khhh2
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  INVALID CUSTOMER ID.
Giving the Customet id Right P
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present
Clicking The Button Working p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PLEASE ENTER THE ITEM MODEL.
Giving The type Rf p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  RF
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PLEASE ENTER THE ITEM MODEL.
Giving The type Tv p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  TV
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PLEASE ENTER THE ITEM MODEL.
Giving The type Ac p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  AC
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PLEASE ENTER THE ITEM MODEL.

Giving The type Wm p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  WM
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PLEASE ENTER THE ITEM MODEL.
Giving the Model Name p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  WM
    input text  name=model_name  adfdffd
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PLEASE ENTER COST OF THE PRODUCT.
Giving THE Amount p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  WM
    input text  name=model_name  adfdffd
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  14578
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PLEASE DESCRIBE THE PRODUCT CONDITION.

Giving THe Remarks p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  WM
    input text  name=model_name  adfdffd
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  14578
    input text  xpath=//*[@id="inputNewPassword"]  ok
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PURCHASE COMPLETED.
Giving Data For Not Workinf Button p
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    click element  //*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[2]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/div[1]/select  WM
    input text  name=model_name  adfdffd
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  14578
    input text  xpath=//*[@id="inputNewPassword"]  ok
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    alert should be present  PURCHASE COMPLETED.
    sleep  9s
Clicking The Button Sell
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[1]/div[2]/label/span
    focus  xpath=//*[@id="inputFirstName"]
Giving the Customet id wrong s
    input text  xpath=//*[@id="inputFirstName"]  14khhh2
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  2s
    alert should be present  INVALID CUSTOMER ID.
Giving the Customet id Right s
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/input
    sleep  5s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  2s
    handle alert
Giving The Sereal Number in 1S
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/input
    select from list by value  xpath=//*[@id="serial"]  201800001
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  2s
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
Giving The Sereal Number in 2S
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/input
    select from list by value  xpath=//*[@id="serial"]  201800002
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  2s
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
Clicking Button Not Working
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/input
    select from list by value  xpath=//*[@id="serial"]  201800002
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[2]/label/span
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  2s
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input
Giving amount In S
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/input
    select from list by value  xpath=//*[@id="serial"]  201800002
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[2]/label/span
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  14975
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  2s
    alert should be present  PLEASE DESCRIBE THE PRODUCT CONDITION.
Giving The Working Condition in S
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/input
    select from list by value  xpath=//*[@id="serial"]  201800002
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[2]/label/span
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  14975
    input text  xpath=//*[@id="inputNewPassword"]  not ok
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  2s
    alert should be present  SUCESSFULLY SOLD THE PRODUCT
Clicking The Button Working in S
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[1]/div[2]/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/input
    input text  xpath=//*[@id="inputFirstName"]  ${CUstomer Id}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    select from list by value  xpath=//*[@id="serial"]  201800001
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[2]/label/span
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  14975
    input text  xpath=//*[@id="inputNewPassword"]  not ok
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  2s
    alert should be present  SUCESSFULLY SOLD THE PRODUCT
