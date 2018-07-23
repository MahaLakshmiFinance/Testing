*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Old_Password} =  mlf@123
${New_Password} =  123456

*** Keywords ***
Change Password
    click link  //*[@id="link19"]
    sleep  3s
    wait until page contains element  //*[@id="subcontent81"]/div/form

Submit Empty Passwords
    click button  //*[@id="subcontent81"]/div/form/div[4]/button
    sleep  3s
    alert should be present  PLEASE ENTER OLD PASSWORD.

Submit Old Password
    input password  //*[@id="subcontent81"]/div/form/div[1]/div[1]/input  ${Old_Password}
    click button  //*[@id="subcontent81"]/div/form/div[4]/button
    sleep  3s
    alert should be present  PLEASE ENTER NEW PASSWORD.

Submit New Password
    input password  //*[@id="subcontent81"]/div/form/div[1]/div[1]/input  ${Old_Password}
    input password  //*[@id="subcontent81"]/div/form/div[2]/div[1]/input  ${New_Password}
    click button  //*[@id="subcontent81"]/div/form/div[4]/button
    sleep  3s
    alert should be present  PLEASE RETYPE NEW PASSWORD.

Submit Unmatched Passwords
    input password  //*[@id="subcontent81"]/div/form/div[1]/div[1]/input  ${Old_Password}
    input password  //*[@id="subcontent81"]/div/form/div[2]/div[1]/input  ${New_Password}
    input password  //*[@id="subcontent81"]/div/form/div[3]/div[1]/input  ${Old_Password}
    click button  //*[@id="subcontent81"]/div/form/div[4]/button
    sleep  3s
    alert should be present  BOTH NEW AND RETYPED PASSWORDS MUST BE THE SAME

Submit Normally
    input password  //*[@id="subcontent81"]/div/form/div[1]/div[1]/input  ${Old_Password}
    input password  //*[@id="subcontent81"]/div/form/div[2]/div[1]/input  ${Old_Password}
    input password  //*[@id="subcontent81"]/div/form/div[3]/div[1]/input  ${Old_Password}
    click button  //*[@id="subcontent81"]/div/form/div[4]/button
    sleep  3s
    alert should be present  PASSWORD CHANGED SUCESSFULLY.