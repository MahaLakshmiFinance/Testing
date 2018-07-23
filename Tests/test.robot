*** Settings ***
Resource  ../Resources/common.robot
#Resource  ../Resources/Services/signout.robot
#Resource  ../Resources/Services/chgpswd.robot
Resource  ../Resources/login.robot
Resource  ../Resources/Services/users.robot
#Resource  ../Resources/Services/buyback.robot
#Resource  ../Resources/Services/trans.robot
#Resource  ../Resources/Services/cashfin.robot
#Resource  ../Resources/Services/articalfin.robot
Resource  ../Resources/Services/employee.robot
#Resource  ../Resources/Services/access.robot

Test Setup  Begin Test
Test Teardown  End Test

*** Test Cases ***
emp
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