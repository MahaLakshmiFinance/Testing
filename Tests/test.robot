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
Users Page
    login.valid username and password
    #sleep  3s
    users.Click Users
    users.Valid Username Entry
    users.name entry
    users.valid contact nums
    users.enter address and submit