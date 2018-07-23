*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/cashfin.robot
Resource  ../resourcess/login.robot
Resource  ../resourcess/articalfin.robot
Resource  ../resourcess/employee.robot

Test Setup  Opening
Test Teardown  Closing
*** Test Cases ***
cf
    cashfin.Clicking Cash Finance
    cashfin.Giving Wrong Phone Number
    cashfin.Giving Right Phonenumber
    cashfin.Giving Only Amount
    cashfin.Giving Only Rateof Interest
    cashfin.Giving Only Phonenumber And Amount
    cashfin.Giving only Phonenumber And Rate Ofinterest
    cashfin.Giving All
af 1
    articalfin.Clicking Af
    articalfin.Giving Wrong Coustemerid in Af
    articalfin.Giving Right Coustemerid in Af
    articalfin.Giving Artical Bill Number Af x
    articalfin.Giving Artical Id Af
    articalfin.Giving Artical Model Af
    articalfin.Giving Aritical Cost Af Wrong
    articalfin.Giving Aritical Cost Af
    articalfin.Giving Finance Reference Number Af Wrong
    articalfin.Giving Finance Reference Number Af
    articalfin.Giving Date Af Wrong
    articalfin.Giving Date Af
    articalfin.Giving Amount Af Wrong
    articalfin.Giving Amount Af
    articalfin.Giving Documentation Charge Af Wrong
    articalfin.Giving Documentation Charge Af
    articalfin.Giving Rate Of Interest Af Wrong
    articalfin.Giving Rate Of Interest Af
af 2
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Month And Giving Emis
af 3
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Amount And Installment aumout
af 4
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Month And Giving Emis Given alerdy
af 5
    articalfin.Clicking Af
    articalfin.Giving the Artical Cost Less Than The Given Amount
af 6
    articalfin.Clicking Af
    articalfin.Giving The Type As Ac
af 7
    articalfin.Clicking Af
    articalfin.Giving The Type As Tv
af 8
    articalfin.Clicking Af
    articalfin.Giving The Type As Refrigirator
emp
    employee1.Add Employe
    employee1.rffda
    employee1.Giving Employ Id Wrong
    employee1.Giving Employ Id Wrong With Words
    employee1.Giving Employ Id Right
    employee1.Clicking Location Is Palakollu
    employee1.Clicking Location Is Narsapuram
    employee1.Giving Services As Articlefinace
    employee1.Giving Services As Cashfinance
    employee1.Giving Services As Accessories
    employee1.Giving Services As Transactions
    employee1.Clicking The Expencedetails
    employee1.Giving The Emploe Id Wrong
    employee1.Giving The Emploe Id
    employee1.Giving The Coustemer Id
    employee1.Giving The Coustemer Id Wrong
    employee1.Giving The Expence Wrong
    employee1.Giving The Expence
    employee1.Giving The Collected Wrong
    employee1.Giving The Collected
    employee1.Giving The Remarks Words And Numbers
    employee1.Giving the Remarks Only Letters
    employee1.Clicking On The Link Salarydetails
    employee1.Giving The Employe Id In The Salarydetails
    employee1.Updating athe SAlary Of Empoye In The Salarydetails Wrong
    employee1.Updating athe SAlary Of Empoye In The Salarydetails
