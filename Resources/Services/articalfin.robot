*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Clicking Af
    click element  xpath=//*[@id="link2"]
    wait until page contains element  name=article_finance
    sleep  5s
    focus  xpath=//*[@id="inputFirstName"]

Giving Wrong Coustemerid in Af
    input text  xpath=//*[@id="inputFirstName"]  831asdsf823
    focus  name=ref_no
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  INVALID CUSTOMER ID
Giving Right Coustemerid in Af

    input text  name=username  0123456789
    focus  name=ref_no
    Sleep  3s
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Artical Bill Number Af x
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Artical Id Af
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Artical Model Af
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Aritical Cost Af Wrong
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  123e
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    wait until page contains  0123456789
Giving Aritical Cost Af
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Finance Reference Number Af Wrong
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  3343r
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Finance Reference Number Af
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Date Af Wrong
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-2-w
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Date Af
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Amount Af Wrong
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  2d
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Amount Af
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  23
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Documentation Charge Af Wrong
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  23
    input text  xpath=//*[@id="inputNewPassword"]  18
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Documentation Charge Af
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  23
    input text  xpath=//*[@id="inputNewPassword"]  18
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Rate Of Interest Af Wrong
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  23
    input text  xpath=//*[@id="inputNewPassword"]  18
    input text  name=rt_of_int  qe2
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    wait until page contains  0123456789
Giving Rate Of Interest Af
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m45
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  1234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  23
    input text  xpath=//*[@id="inputNewPassword"]  18
    input text  name=rt_of_int  4
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  MAKE SURE ALL FIELDS ARE FILLED.
Giving Emi Seheme Button Month And Giving Emis
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6

    input text  xpath=//*[@id="inputEmail"]  435fgfg
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  13234
    input text  name=article_refno  334343
    sleep  3s
    input text  xpath=//*[@id="date"]  2018-02-01
    focus  xpath=//*[@id="inputFirstName"]
    focus  xpath=//*[@id="inputFirstName"]
    input text  xpath=//*[@id="inputUsername"]  2345
    input text  name=doc_charges  23
    input text  name=rt_of_int  21
    select from list by value  xpath=//*[@id="subcontent21"]/div/form/div[4]/div[1]/select  RF
    #clicking button month in the form
    click element  xpath=//*[@id="subcontent21"]/div/form/div[9]/div/div[1]/label/span
    sleep  3s
    input text  name=tot_emis  3454
    sleep  3s
    focus  xpath=//*[@id="inputFirstName"]
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button

    alert should be present  PURCHASE COMPLETED.
    focus  xpath=//*[@id="inputFirstName"]
Giving Emi Seheme Button Amount And Installment aumout
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m4hghg
    input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  13234
    input text  name=article_refno  3365543
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  2345
    input text  name=doc_charges  23
    input text  name=rt_of_int  21

    select from list by value  xpath=//*[@id="subcontent21"]/div/form/div[4]/div[1]/select  RF
    #clicking button Amount in the form
    click element  xpath=//*[@id="subcontent21"]/div/form/div[9]/div/div[2]/label/span
    sleep  3s
    input text  name=inst_amnt  2323
    focus  xpath=//*[@id="inputFirstName"]
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  PURCHASE COMPLETED.
    focus  xpath=//*[@id="inputFirstName"]
Giving Emi Seheme Button Month And Giving Emis Given alerdy
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435hg
   input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  13234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  2345
    input text  name=doc_charges  23
    input text  name=rt_of_int  21
    select from list by value  xpath=//*[@id="subcontent21"]/div/form/div[4]/div[1]/select  TV
    #clicking button month in the form
    click element  xpath=//*[@id="subcontent21"]/div/form/div[9]/div/div[1]/label/span
    sleep  3s
    input text  name=tot_emis  3454
    Sleep  3s
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  PRODUCT ALREADY FINANCED.
    focus  xpath=//*[@id="inputFirstName"]
Giving The Type As Ac
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435mhg
   input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  13234
    input text  name=article_refno  3343200
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  2345
    input text  name=doc_charges  23
    input text  name=rt_of_int  22
    select from list by value  xpath=//*[@id="subcontent21"]/div/form/div[4]/div[1]/select  AC
    #clicking button month in the form
    click element  xpath=//*[@id="subcontent21"]/div/form/div[9]/div/div[1]/label/span
    sleep  3s
    input text  name=tot_emis  3454
    sleep  5s
    focus  name=submit
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  PURCHASE COMPLETED.

Giving The Type As Tv
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m4hgh
   input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  13234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  2345
    input text  name=doc_charges  23
    input text  name=rt_of_int  21
    select from list by value  xpath=//*[@id="subcontent21"]/div/form/div[4]/div[1]/select  TV
    #clicking button month in the form
    click element  xpath=//*[@id="subcontent21"]/div/form/div[9]/div/div[1]/label/span
    sleep  5s
    input text  name=tot_emis  3454
    sleep  5s
    focus  name=submit
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  PRODUCT ALREADY FINANCED.

Giving the Artical Cost Less Than The Given Amount
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435m4vh
   input text  xpath=//*[@id="model"]  samsung
    input text  xpath=//*[@id="a_cost"]  13234
    input text  name=article_refno  3342178
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  234556
    input text  name=doc_charges  23
    input text  name=rt_of_int  21
    select from list by value  xpath=//*[@id="subcontent21"]/div/form/div[4]/div[1]/select  RF
    #clicking button month in the form
    click element  xpath=//*[@id="subcontent21"]/div/form/div[9]/div/div[1]/label/span

    input text  name=tot_emis  3454
    sleep  5s
    focus  name=submit
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    alert should be present  COST OF ARTICLE IS LESS THAN FINANCE ANMOUNT.

Giving The Type As Refrigirator
    input text  xpath=//*[@id="inputFirstName"]  0123456789
    input text  xpath=//*[@id="inputConfirmNewPassword"]  65dffdf6
    input text  xpath=//*[@id="inputEmail"]  435fggh
   input text  xpath=//*[@id="model"]  samsung123
    input text  xpath=//*[@id="a_cost"]  13234
    input text  name=article_refno  334343
    input text  xpath=//*[@id="date"]  2018-02-01
    input text  xpath=//*[@id="inputUsername"]  2345
    input text  name=doc_charges  23
    input text  name=rt_of_int  21
    select from list by value  xpath=//*[@id="subcontent21"]/div/form/div[4]/div[1]/select  RF
    #clicking button month in the form
    click element  xpath=//*[@id="subcontent21"]/div/form/div[9]/div/div[1]/label/span
    input text  name=tot_emis  3454
    focus  name=submit
    click button  xpath=//*[@id="subcontent21"]/div/form/div[11]/button
    Sleep  3s
    alert should be present  PRODUCT ALREADY FINANCED.
    focus  xpath=//*[@id="inputFirstName"]

    close browser