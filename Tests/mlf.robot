*** Settings ***
Resource  ../Resources/common.robot
Resource  ../Resources/Services/signout.robot
Resource  ../Resources/Services/chgpswd.robot
Resource  ../Resources/login.robot
Resource  ../Resources/Services/users.robot
Resource  ../Resources/Services/cashfin.robot
Resource  ../Resources/Services/buyback.robot
Resource  ../Resources/Services/trans.robot
Resource  ../Resources/Services/articalfin.robot

Test Setup  Begin Test
Test Teardown  End Test

*** Test Cases ***
Login Page
    login.empty username and valid password
    login.valid username and empty password
    login.invalid username and invalid password
    login.empty username and empty password
    login.invalid username and valid password
    login.valid username and invalid password
    login.valid username and password

Users Page
    login.valid username and password
    #sleep  3s
    users.Click Users
    users.Submit Empty Fields
    users.Invalid Username Entry
    users.invalid len username
    users.Valid Username Entry
    users.name entry
    users.invalid contact num
    users.invalid alternte contact num
    users.valid contact nums
    users.enter address and submit
    users.click edit
    users.edit existing user
    users.click view
    users.view existing user

af 1
    login.valid username and password
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
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Month And Giving Emis

af 3
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Amount And Installment aumout

af 4
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Month And Giving Emis Given alerdy

af 5
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving the Artical Cost Less Than The Given Amount

af 6
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving The Type As Ac

af 7
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving The Type As Tv

af 8
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving The Type As Refrigirator

Cash Finance
    login.valid username and password
    cashfin.Clicking Cash Finance
    cashfin.Giving Wrong Phone Number
    cashfin.Giving Right Phonenumber
    cashfin.Giving Only Amount
    cashfin.Giving Only Rateof Interest
    cashfin.Giving Only Phonenumber And Amount
    cashfin.Giving only Phonenumber And Rate Ofinterest
    cashfin.Giving All

Buy Back Items
    login.valid username and password
    buyback.click buybackitems
    buyback.no entries
    #buyback.invalid cutomer entry
    buyback.valid entry

Transactions
    login.valid username and password
    trans.click transactions
    trans.no entries
    #trans.invalid cutomer entry
    trans.valid username
    trans.select cash
    trans.select refno
    trans.select article
    trans.select refno

Change Password
    login.valid username and password
    sleep  3s
    chgpswd.change password
    chgpswd.Submit Empty Passwords
    chgpswd.Submit Old Password
    chgpswd.Submit New Password
    chgpswd.Submit Unmatched Passwords
    chgpswd.Submit Normally

Signout
    login.valid username and password
    Click Signout