*** Settings ***

*** Keywords ***
click buybackitems
    click element  //*[@id="link4"]
    wait until page contains element  name=exchange

click submit
    click element  //*[@id="subcontent"]/div[2]/div/form/div[9]/button
    sleep  3s
    
no entries
    buyback.click submit
    alert should be present  PLEASE ENTER CUSTOMER ID.

invalid cutomer entry
    input text  name=username  gt4gft4
    buyback.click submit
    alert should be present  INVALID CUSTOMER ID

    input text  name=username  32134214
    buyback.click submit
    alert should be present  INVALID CUSTOMER ID

valid entry
    input text  name=username  0123456789
    buyback.click submit
    alert should be present  PLEASE CHECK THE ITEM CONDITION.

    click element  //*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[1]/label/span
    radio button should be set to  item_cond  1

    click element  //*[@id="subcontent"]/div[2]/div/form/div[4]/div[2]/div[2]/label/span
    radio button should be set to  item_cond  0

    select from list by value  name=item_type  RF
    wait until page contains  Refrigerator ( RF )

    select from list by value  name=item_type  TV
    wait until page contains  Television ( TV )

    select from list by value  name=item_type  AC
    wait until page contains  Air Conditioner ( AC )

    select from list by value  item_type  WM
    wait until page contains  Washing Machine ( WM )

    buyback.click submit
    alert should be present  PLEASE ENTER THE ITEM MODEL.

    input text  name=model_name  cv789wtye
    buyback.click submit
    alert should be present  PLEASE ENTER COST OF THE PRODUCT.

    input text  cost  1234
    buyback.click submit
    alert should be present  PLEASE DESCRIBE THE PRODUCT CONDITION.

    input text  remarks  any remark
    buyback.click submit
    alert should be present  PURCHASE COMPLETED.