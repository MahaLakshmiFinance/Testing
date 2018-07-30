*** Settings ***
Resource  ../Resources/common.robot
#Resource  ../Resources/Services/signout.robot
#Resource  ../Resources/Services/chgpswd.robot
Resource  ../Resources/login.robot
Resource  ../Resources/Services/users.robot
Resource  ../Resources/Services/buyback.robot
#Resource  ../Resources/Services/trans.robot
#Resource  ../Resources/Services/cashfin.robot
#Resource  ../Resources/Services/articalfin.robot
Resource  ../Resources/Services/employee.robot
#Resource  ../Resources/Services/access.robot

Test Setup  Begin Test
Test Teardown  End Test

*** Test Cases ***
Buy Back Items
    login.valid username and password
    buyback.click buybackitems
    buyback.Clicking Button Purchase
    buyback.Giving the Customet id wrong P
    buyback.Giving the Customet id Right P
    buyback.Clicking The Button Working p
    buyback.Giving The type Rf p
    buyback.Giving The type Tv p
    buyback.Giving The type Ac p
    buyback.Giving The type Wm p
    buyback.Giving the Model Name p
    buyback.Giving THE Amount p
    buyback.Giving THe Remarks p
    buyback.Giving Data For Not Workinf Button p
    buyback.Clicking The Button Sell
    buyback.Giving the Customet id wrong s
    buyback.Giving the Customet id Right s
    buyback.Giving The Sereal Number in 1S
    buyback.Giving The Sereal Number in 2S
    buyback.Clicking Button Not Working
    buyback.Giving amount In S
    buyback.Giving The Working Condition in S
    buyback.Clicking The Button Working in S
