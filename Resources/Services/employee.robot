*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${employee} =  1234567890
${customer} =  0123456789

*** Keywords ***
Add Employe
    click link  xpath=//*[@id="link1"]
    sleep  3s
    click element  xpath=//*[@id="subcontent"]/div/form/div[1]/div[1]/div[2]/label/span
    input Text  name=username  ${employee}
    click element  xpath=//*[@id="rle_type"]/div[1]/label/span
    input text  name=fname  fdsgf
    input text  name=lname  rgfhg
    input text  name=cntact_num  ${employee}
    input text  name=dno  454-564654-54
    input text  name=street  fdhgfhgfh
    input text  name=locality  yfdgvfcdfshvkj
    input text  //*[@id="subcontent"]/div/form/div[5]/div[1]/input  ijkl
    input text  name=pincode  531747
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  5s
    alert should be present


rffda
    click link  xpath=//*[@id="link5"]
    sleep  4s

Clicking Employee Details
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    sleep  4s
    handle alert

Giving Employ Id Wrong
    input text  name=emp_id  9959723815
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/select
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    sleep  4s
    alert should be present  INVALID EMPLOYEE ID

Giving Employ Id Wrong With Words
    input text  name=emp_id  99597238ewe5
    focus  name=loc
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    sleep  5s
    alert should be present  INVALID EMPLOYEE ID

Giving Employ Id Right
    input text  name=emp_id  ${employee}
    focus  name=loc
    sleep  5s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    sleep  8s
    alert should be present  PLEASE SELECT THE LOCATION

Clicking Location Is Palakollu
    input text  name=emp_id  ${employee}
    focus  name=loc
    #giving the loaction as select
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/select  PAL
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    alert should be present  SUCESSFULLY UPDATED THE EMPLOYEE DETAILS

Clicking Location Is Narsapuram
    input text  name=emp_id  ${employee}
    focus  name=loc
    #giving the loaction as select
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/select  NAR
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    alert should be present  SUCESSFULLY UPDATED THE EMPLOYEE DETAILS

Giving Services As Articlefinace
    input text  name=emp_id  ${employee}
    focus  name=loc
    #giving the loaction as select
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/select  NAR
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[2]/label/span
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    alert should be present  SUCESSFULLY UPDATED THE EMPLOYEE DETAILS

Giving Services As Cashfinance
    input text  name=emp_id  ${employee}
    focus  name=loc
    #giving the loaction as select
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/select  NAR
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[3]/div[1]/label/span
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    alert should be present  SUCESSFULLY UPDATED THE EMPLOYEE DETAILS

Giving Services As Accessories
    input text  name=emp_id  ${employee}
    focus  name=loc
    #giving the loaction as select
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/select  NAR
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[4]/div[1]/label/span
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    alert should be present  SUCESSFULLY UPDATED THE EMPLOYEE DETAILS

Giving Services As Transactions
    input text  name=emp_id  ${employee}
    focus  name=loc
    #giving the loaction as select
    select from list by value  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/div[1]/select  NAR
    click element  xpath=//*[@id="subcontent"]/div[2]/div/form/div[4]/div[4]/div[2]/label/span
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[5]/button
    alert should be present  SUCESSFULLY UPDATED THE EMPLOYEE DETAILS

Clicking The Expencedetails
    click element  xpath=//*[@id="content"]/div/div/div[1]/nav/ul/li[2]/a

Giving The Emploe Id Wrong
    focus  xpath=//*[@id="content"]/div/div/div[1]/nav/ul/li[2]/a
    input text  name=emp_id  9959454578
    focus  name=cstmr_id
    sleep  5s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    sleep  5s
    alert should be present  INVALID EMPLOYEE ID

Giving The Emploe Id
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    alert should be present  PLEASE ENTER CUSTOMER ID.

Giving The Coustemer Id
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    input text  name=cstmr_id  ${customer}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[1]/div/input
    sleep  8s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    sleep  6s
    alert should be present  PLEASE ENTER EXPENSE AMOUNT.

Giving The Coustemer Id Wrong
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    input text  name=cstmr_id  831768hghgh5
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    alert should be present  PLEASE ENTER EXPENSE AMOUNT.

Giving The Expence Wrong
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    input text  name=cstmr_id  ${customer}
   input text  name=expense  12e
   click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
   focus  name=expense

Giving The Expence
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    input text  name=cstmr_id  ${customer}
    input text  name=expense  12
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    alert should be present  PLEASE ENTER COLLECTED AMOUNT.

Giving The Collected Wrong
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    input text  name=cstmr_id  8317681873
    input text  name=expense  12
    input text  name=col_amt  223e
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    focus  name=expense

Giving The Collected
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    input text  name=cstmr_id  ${customer}
    input text  name=expense  12
    input text  name=col_amt  2232
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    alert should be present  PLEASE ENTER REMARKS

Giving The Remarks Words And Numbers
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    input text  name=cstmr_id  ${customer}
    input text  name=expense  12
    input text  name=col_amt  2232
    input text  name=remarks  not od 435
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    alert should be present  SUCESSFULLY UPDATED THE EXPENSE DETAILS

Giving the Remarks Only Letters
    input text  name=emp_id  ${employee}
    focus  name=cstmr_id
    input text  name=cstmr_id  ${customer}
    input text  name=expense  12
    input text  name=col_amt  2232
    input text  name=remarks  not ok
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[6]/button
    alert should be present  SUCESSFULLY UPDATED THE EXPENSE DETAILS

Clicking On The Link Salarydetails
    click element  xpath=//*[@id="content"]/div/div/div[1]/nav/ul/li[3]/a

Giving The Employe Id In The Salarydetails Wrong
    input text  name=emp_id   9959723841
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[4]/input
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/button
    alert should be present  INVALID EMPLOYEE ID
    sleep  9s

Giving The Employe Id In The Salarydetails
    input text  name=emp_id   ${employee}
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[4]/input
    sleep  5s
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/button
    sleep  5s
    alert should be present  PLEASE ENTER SALARY AMOUNT

Updating athe SAlary Of Empoye In The Salarydetails Wrong
    input text  name=emp_id   ${employee}
    input text  name=usal  43e
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/button
    focus  xpath=//*[@id="subcontent"]/div[2]/div/form/div[2]/div[4]/input

Updating athe SAlary Of Empoye In The Salarydetails
    input text  name=emp_id   ${employee}
    input text  name=usal  43
    click button  xpath=//*[@id="subcontent"]/div[2]/div/form/div[3]/button
    alert should be present  SUCESSFULLY UPDATED THE SALARY DETAILS
    close all browsers