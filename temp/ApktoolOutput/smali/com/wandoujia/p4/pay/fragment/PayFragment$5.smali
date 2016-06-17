.class Lcom/wandoujia/p4/pay/fragment/PayFragment$5;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

.field final synthetic val$payMethodList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x0

    .line 452
    const-string v1, "onItemSelected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getRechargeMoneyList(Lcom/wandoujia/p4/pay/model/PayMethod;)Ljava/util/List;

    move-result-object v3

    .line 456
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayMethod;->SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouInput:Landroid/view/View;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1900(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    .line 463
    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->amountLabelText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2000(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const-string v1, "onItemSelected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setCurPayMethod(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayMethod;->ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayMethod;->UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    #setter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeMoneyList:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2102(Lcom/wandoujia/p4/pay/fragment/PayFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 471
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeMoneyList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, "\u624b\u52a8\u8f93\u5165"

    aput-object v4, v1, v2

    :goto_1
    move v1, v0

    move v2, v0

    .line 480
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 481
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeMoneyList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/RechargeMoney;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/model/RechargeMoney;->title:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 482
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/RechargeMoney;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/model/RechargeMoney;->check:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/RechargeMoney;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/model/RechargeMoney;->money:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setDefaultMoney(Ljava/lang/Long;)V

    move v2, v1

    .line 480
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouInput:Landroid/view/View;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1900(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 474
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    #setter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeMoneyList:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2102(Lcom/wandoujia/p4/pay/fragment/PayFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030253

    iget-object v5, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeMoneyList:[Ljava/lang/String;
    invoke-static {v5}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #setter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->moneyListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2202(Lcom/wandoujia/p4/pay/fragment/PayFragment;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    .line 494
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->moneyListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2200(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 497
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->moneyListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2200(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 498
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 499
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 519
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 524
    return-void
.end method
