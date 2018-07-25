*** Settings ***
Resource  ../Resources/common.robot
Resource  ../Resources/login.robot
Resource  ../Resources/Services/users.robot
Resource  ../Resources/Services/articalfin.robot
Resource  ../Resources/Services/cashfin.robot
Resource  ../Resources/Services/buyback.robot
Resource  ../Resources/Services/employee.robot
Resource  ../Resources/Services/access.robot
Resource  ../Resources/Services/trans.robot
Resource  ../Resources/Services/chgpswd.robot
Resource  ../Resources/Services/signout.robot

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

Article Finance 1
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

Article Finance 2
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Month And Giving Emis

Article Finance 3
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Amount And Installment aumout

Article Finance 4
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving Emi Seheme Button Month And Giving Emis Given alerdy

Article Finance 5
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving the Artical Cost Less Than The Given Amount

Article Finance 6
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving The Type As Ac

Article Finance 7
    login.valid username and password
    articalfin.Clicking Af
    articalfin.Giving The Type As Tv

Article Finance 8
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
    buyback.invalid cutomer entry
    buyback.valid entry

Employee
    login.valid username and password
    employee.Add Employe
    employee.rffda
    employee.Giving Employ Id Wrong
    employee.Giving Employ Id Wrong With Words
    employee.Giving Employ Id Right
    employee.Clicking Location Is Palakollu
    employee.Clicking Location Is Narsapuram
    employee.Giving Services As Articlefinace
    employee.Giving Services As Cashfinance
    employee.Giving Services As Accessories
    employee.Giving Services As Transactions
    employee.Clicking The Expencedetails
    employee.Giving The Emploe Id Wrong
    employee.Giving The Emploe Id
    employee.Giving The Coustemer Id
    employee.Giving The Coustemer Id Wrong
    employee.Giving The Expence Wrong
    employee.Giving The Expence
    employee.Giving The Collected Wrong
    employee.Giving The Collected
    employee.Giving The Remarks Words And Numbers
    employee.Giving the Remarks Only Letters
    employee.Clicking On The Link Salarydetails
    employee.Giving The Employe Id In The Salarydetails
    employee.Updating athe SAlary Of Empoye In The Salarydetails Wrong
    employee.Updating athe SAlary Of Empoye In The Salarydetails

Accessories
    login.valid username and password
    access.Clicking On The Link Accessories
    access.Button Purchase
    access.Clickin On The Button Purchase In Accessories
    access.Giving The MOdel Of The Item IN Accesssories
    access.Giving The Date In Accessories
    access.Giving The Total Amount In Accessories Wrong
    access.Giving The Total Amount In Accessories FLWS
    access.Giving The Total Amount In Accessories FLWMC
    access.Giving The Total Amount In Accessories TLWMC
    access.Button Sell
    access.Clicking The Button Sell
    access.Giving Coustemer Id In The Accessories Wrong
    access.Giving Coustemer Id In The Accessories
    access.Giving The Serealnumber In The Accessories
    access.Giving The DAte In The Accessories Wrong
    access.Giving The DAte In The Accessories
    access.Giving THe Total Amount In THe Accessories Wrong
    access.Giving THe Total Amount In THe Accessories

Transaction with Artical
    login.valid username and password
    trans.Clicking link Tracation
    trans.Giving Coustemer ID wrong IN Artical Button
    trans.Giving The Correct COstumer Id IN Artical Button
    trans.Clicking Button Artical IN Artical Button
    trans.Giving The Reference Number IN Artical Button
    trans.Giving Resept id IN Artical Button
    trans.Giving The Due Date IN Artical Button
    trans.Giving Amount Paid IN Artical Button
    trans.Clicking The Button Penality IN Artical Button
    trans.Giving The Penality Amount Paid IN Artical Button

Transcation with Cash
    login.valid username and password
    trans.Clicking link Tracation
    trans.Giving The Wrong Custemer id In CFButton
    trans.Clicking The Cash Button In CFButton
    trans.Selecting the Reference no In CFButton
    trans.Giving The Recipt Id In CFButton
    trans.Giving The Due Date In CFButton
    trans.Giving The Amount Paid In CFButton
    trans.Adding Penality 50 In CFButton
    trans.Paying Penality 50 In CFButton
    trans.Paying Penality less than 50 In CFButton

Change Password
    login.valid username and password
    chgpswd.change password
    chgpswd.Submit Empty Passwords
    chgpswd.Submit Old Password
    chgpswd.Submit New Password
    chgpswd.Submit Unmatched Passwords
    chgpswd.Submit Normally

Signout
    login.valid username and password
    Click Signout