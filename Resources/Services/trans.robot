*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${coustemer id} =  0123456789
${reference number Cash} =  201800001
${due date} =  1
${due date 2} =  2
${reference number Cash 1} =  201800002
${reference number Cash 2} =  201800003
${reference number Cash 3} =  201800004
${reference number Cash 4} =  201800005
${penelity} =  50
${Reference tra} =  334343
${resept no tra} =  1234
${Reference tra 1}=  3343200
${custemae id tra} =  0123456789

${penelity tra} =  75

*** Keywords ***
Clicking link Tracation
    click link  xpath=//*[@id="link10"]
    sleep  4s

Giving Coustemer ID wrong IN Artical Button
    Sleep  1s
    input text  name=username  55664546545
    sleep  2s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  PLEASE CHECK USER ID.
Giving The Correct COstumer Id IN Artical Button
    sleep  1s
    #Giving The COustemar Id
    input text  name=username  ${custemae id tra}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select
    sleep  2s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    Sleep  2s
    alert should be present  PLEASE SELECT FINANCE TYPE.
Clicking Button Artical IN Artical Button
    sleep  1s

#Giving The COustemar Id
    input text  name=username  ${custemae id tra}
    sleep  2s
    #clicking The button Artical
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[1]/label/span
    sleep  2s
    Focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[1]/input
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    sleep  2s
   alert should be present  PLEASE SELECT REFERNECE NUMBER.

Giving The Reference Number IN Artical Button
    sleep  1s
#Giving The COustemar Id
    input text  name=username  ${custemae id tra}
    sleep  2s
    #clicking The button Artical
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[1]/label/span
    sleep  8s
    Focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[1]/input
    #reference Number
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${Reference tra}
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  PLEASE ENTER THE RECEIPT ID.
Giving Resept id IN Artical Button
    sleep  1s
#Giving The COustemar Id
    input text  name=username  ${custemae id tra}
    sleep  2s
    #clicking The button Artical
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[1]/label/span
    sleep  8s
    Focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[1]/input
    #reference Number
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${Reference tra}
    #giving The resept id
    sleep  2s
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  ${resept no tra}
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  PLEASE SELECT THE DUE DATE.
Giving The Due Date IN Artical Button
    sleep  1s
#Giving The COustemar Id
    input text  name=username  ${custemae id tra}
    sleep  2s
    #clicking The button Artical
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[1]/label/span
    sleep  8s
    Focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[1]/input
    #reference Number
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${Reference tra}
    #giving The resept id
    sleep  2s
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  ${resept no tra}
    # Due Date
    select from list by value  name=due_num  ${due date}
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  TRANSACTION COMPLETE.
Giving Amount Paid IN Artical Button
    sleep  1s
#Giving The COustemar Id
    input text  name=username  ${custemae id tra}
    sleep  2s
    #clicking The button Artical
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[1]/label/span
    sleep  8s
    Focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[1]/input
    #reference Number
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${Reference tra}
    #giving The resept id
    sleep  2s
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  ${resept no tra}
    # Due Date
    select from list by value  name=due_num  ${due date 2}
    #Amount Paid
    input text  name=amount  8788
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  TRANSACTION COMPLETE.
Clicking The Button Penality IN Artical Button
    sleep  1s
#Giving The COustemar Id
    input text  name=username  ${custemae id tra}
    sleep  2s
    #clicking The button Artical
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[1]/label/span
    sleep  8s
    Focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[1]/input
    #reference Number
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${Reference tra}
    #giving The resept id
    sleep  2s
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  ${resept no tra}
    # Due Date
    select from list by value  name=due_num  2
    #Amount Paid
    input text  name=amount  8788
    #penalati Button
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/div/div/label/span
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present   PLEASE SELECT PENALITY RATE.
Giving The Penality Amount Paid IN Artical Button
    reload page

    sleep  2s
    click element  link10
    sleep  5s
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[5]/input  2018-07-20
#Giving The COustemar Id
    input text  name=username  ${custemae id tra}
    sleep  2s
    #clicking The button Artical
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[1]/label/span
    sleep  8s
    Focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[1]/input
    #reference Number
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${Reference tra 1}
    #giving The resept id
    sleep  2s
    input text  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/div[2]/input  ${resept no tra}
    # Due Date
    select from list by value  name=due_num  2
    #Amount Paid
    input text  name=amount  8788
    #penalati Button
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/div/div/label/span
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[1]/input
    #selecting the penality
    select from list by value  xpath=//*[@id="penality_group"]/div[1]/select  ${penelity tra}
    #Penality Amount Paid
    input text  name=penality  50
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  TRANSACTION COMPLETE.

Giving The Wrong Custemer id In CFButton
    #custemer id
    input text  name=username  83175845
    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  PLEASE CHECK USER ID.
Clicking The Cash Button In CFButton
    #custemer id
    input text  name=username  ${coustemer id}
    #Clicking The Button Cash
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[2]/label/span
    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  PLEASE SELECT REFERNECE NUMBER.
Selecting the Reference no In CFButton
    # custemer id
    input text  name=username  ${coustemer id}
    #Clicking The Button Cash
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[2]/label/span
    #giving The Reffernce value
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${reference number Cash}
    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  PLEASE ENTER THE RECEIPT ID.
Giving The Recipt Id In CFButton

    input text  name=username  ${coustemer id}
    #Clicking The Button Cash
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[2]/label/span
    #giving The Reffernce value
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${reference number Cash}
    #Giving The Recept Id
    input text  name=receipt_id  12345
    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  PLEASE SELECT THE DUE DATE.
Giving The Due Date In CFButton

    input text  name=username  ${coustemer id}
    #Clicking The Button Cash
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[2]/label/span
    #giving The Reffernce value
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${reference number Cash}
    #Giving The Recept Id
    input text  name=receipt_id  12345
    #Giving The DUE DAte
    select from list by value  xpath=//*[@id="due_date"]  ${due date}
    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  TRANSACTION COMPLETE.
Giving The Amount Paid In CFButton
    input text  name=username  ${coustemer id}
    #Clicking The Button Cash
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[2]/label/span
    #giving The Reffernce value
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${reference number Cash 1}
    #Giving The Recept Id
    input text  name=receipt_id  12345
    #Giving The DUE DAte
    select from list by value  xpath=//*[@id="due_date"]  ${due date}
    #GIving The Amount Paid
    input text  name=amount   1455
    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present  TRANSACTION COMPLETE.
Adding Penality 50 In CFButton
    input text  name=username  ${coustemer id}
    #Clicking The Button Cash
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[2]/label/span
    #giving The Reffernce value
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${reference number Cash 2}
    #Giving The Recept Id
    input text  name=receipt_id  12345
    #Giving The DUE DAte
    select from list by value  xpath=//*[@id="due_date"]  ${due date}
    #GIving The Amount Paid
    input text  name=amount   1455
    #clicking penality
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/div/div/label/span
    #Giving penelity 50
    select from list by value  xpath=//*[@id="penality_group"]/div[1]/select  50

    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present
Paying Penality 50 In CFButton
    input text  name=username  ${coustemer id}
    #Clicking The Button Cash
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[2]/label/span
    #giving The Reffernce value
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${reference number Cash 3}
    #Giving The Recept Id
    input text  name=receipt_id  12345
    #Giving The DUE DAte
    select from list by value  xpath=//*[@id="due_date"]  ${due date}
    #GIving The Amount Paid
    input text  name=amount   1455
    #clicking penality
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/div/div/label/span
    #Giving penelity 50
    select from list by value  xpath=//*[@id="penality_group"]/div[1]/select  ${penelity}
    #paying Penality
    input text  name=penality  ${penelity}
    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present
Paying Penality less than 50 In CFButton
    input text  name=username  ${coustemer id}
    #Clicking The Button Cash
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div[2]/div[2]/label/span
    #giving The Reffernce value
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[3]/select  ${reference number Cash 4}
    #Giving The Recept Id
    input text  name=receipt_id  12345
    #Giving The DUE DAte
    select from list by value  xpath=//*[@id="due_date"]  ${due date}
    #GIving The Amount Paid
    input text  name=amount   1455
    #clicking penality
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[8]/div/div/label/span
    #Giving penelity 50
    select from list by value  xpath=//*[@id="penality_group"]/div[1]/select  ${penelity}
    #paying Penality
    input text  name=penality  45
    #clicking button
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[11]/button
    alert should be present