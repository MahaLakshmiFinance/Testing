*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click Users
    click element  xpath=//*[@id="link1"]
    sleep  2s
    wait until page contains element  //*[@id="subcontent"]/div/form

Submit Empty Fields
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  2s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

Invalid Username Entry
    #Select aadhar enter valid phone
    click element  //*[@id="subcontent"]/div/form/div[1]/div[1]/div[1]/label/span
    input text  //*[@id="subcontent"]/div/form/div[1]/div[1]/input  0123456789
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #Select phone enter valid aadhar
    click element  //*[@id="subcontent"]/div/form/div[1]/div[1]/div[2]/label/span
    input text  //*[@id="subcontent"]/div/form/div[1]/div[1]/input  012345678901
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

Valid Username Entry
    #select aadhar enter valid aadhar
    click element  //*[@id="subcontent"]/div/form/div[1]/div[1]/div[1]/label/span
    input text  //*[@id="subcontent"]/div/form/div[1]/div[1]/input  012345678901
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

    #select phone enter valid phone
    click element  //*[@id="subcontent"]/div/form/div[1]/div[1]/div[2]/label/span
    input text  //*[@id="subcontent"]/div/form/div[1]/div[1]/input  0123456789
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

invalid len username
    #enter aadhar
    click element  //*[@id="subcontent"]/div/form/div[1]/div[1]/div[1]/label/span
    input text  //*[@id="subcontent"]/div/form/div[1]/div[1]/input  01234567890
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #enter aadhar
    click element  //*[@id="subcontent"]/div/form/div[1]/div[1]/div[1]/label/span
    input text  //*[@id="subcontent"]/div/form/div[1]/div[1]/input  0123456789012
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  2s
    alert should be present  INCORRECT INPUT.

    #enter phone
    click element  //*[@id="subcontent"]/div/form/div[1]/div[1]/div[2]/label/span
    input text  //*[@id="subcontent"]/div/form/div[1]/div[1]/input  012345678
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    click element  //*[@id="subcontent"]/div/form/div[1]/div[1]/div[2]/label/span
    input text  //*[@id="subcontent"]/div/form/div[1]/div[1]/input  01234567890
    click button  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

name entry
    #leave empty
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

    #enter invalid first name
    input text  //*[@id="subcontent"]/div/form/div[2]/div[1]/input  f35d4f6ds65
    click element  //*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #enter invalid last name
    input text  //*[@id="subcontent"]/div/form/div[2]/div[2]/input  g645dfg564d
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #enter valid last name
    input text  //*[@id="subcontent"]/div/form/div[2]/div[2]/input  Last
    #enter valid first name
    input text  //*[@id="subcontent"]/div/form/div[2]/div[1]/input  First
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

invalid contact num
    #leave empty
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

    #enter invalid contact num
    input text  //*[@id="subcontent"]/div/form/div[3]/div[1]/input  15646868
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #enter invalid contact num
    input text  //*[@id="subcontent"]/div/form/div[3]/div[1]/input  ggfdhdfgh
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #enter invalid contact num
    input text  //*[@id="subcontent"]/div/form/div[3]/div[1]/input  12345678901
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

invalid alternte contact num
    #leave empty
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #enter invalid contact num
    input text  //*[@id="subcontent"]/div/form/div[3]/div[2]/input  15646868
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #enter invalid contact num
    input text  //*[@id="subcontent"]/div/form/div[3]/div[2]/input  ggfdhdfgh
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

    #enter invalid contact num
    input text  //*[@id="subcontent"]/div/form/div[3]/div[2]/input  12345678901
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  INCORRECT INPUT.

valid contact nums
    #enter valid contact num
    input text  //*[@id="subcontent"]/div/form/div[3]/div[1]/input  1234567890
    #enter valid contact num
    input text  //*[@id="subcontent"]/div/form/div[3]/div[2]/input  1234567891
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

enter address and submit
    #enter door no
    input text  //*[@id="subcontent"]/div/form/div[4]/div[1]/input  2-13-7/1
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

    #enter street
    input text  //*[@id="subcontent"]/div/form/div[4]/div[2]/input  abcd

    #enter locality
    input text  //*[@id="subcontent"]/div/form/div[4]/div[3]/input  efgh

    #enter vlg/town/city
    input text  //*[@id="subcontent"]/div/form/div[5]/div[1]/input  ijkl
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.

    #enter pincode
    input text  //*[@id="subcontent"]/div/form/div[5]/div[3]/input  534101
    click element  xpath=//*[@id="subcontent"]/div/form/div[7]/button[1]
    sleep  3s
    handle alert
click edit
    click element  //*[@id="content"]/div/div/div[1]/nav/ul/li[2]/a
    sleep  3s
    wait until page contains element  name=edit_user

edit existing user
    input text  name=username  0123456789
    set focus to element  name=fname
    sleep  3s
    wait until page contains  First
    wait until page contains  Last
    wait until page contains  1234567890
    wait until page contains  2-13-7/1
    wait until page contains  abcd
    wait until page contains  efgh
    wait until page contains  ijkl
    wait until page contains  West Godavari
    wait until page contains  534101

click view
    click element  //*[@id="content"]/div/div/div[1]/nav/ul/li[4]/a
    sleep  3s
    wait until page contains element  name=view_user

view existing user
    input text  name=username  0123456789
    set focus to element  name=user_names
    sleep  3s
    wait until page contains  First
    wait until page contains  Last
    wait until page contains  1234567890
    wait until page contains  2-13-7/1
    wait until page contains  abcd
    wait until page contains  efgh
    wait until page contains  ijkl
    wait until page contains  West Godavari
    wait until page contains  534101