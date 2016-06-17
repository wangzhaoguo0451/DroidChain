.class Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/PayCallBack;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    .line 627
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V

    .line 628
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Balance pay failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1700(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    .line 631
    if-nez p1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    const v1, 0x7f0e067a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 635
    sget-object v2, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Fail:Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/PayResults;->ordinal()I

    move-result v2

    new-instance v3, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    invoke-static {v0, v2, v1, p2, v3}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->showResult(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;)V

    goto :goto_0
.end method

.method public onPending(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    .line 596
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->queryResultMessage()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    .line 597
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Balance pay pending, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1700(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    .line 617
    :cond_0
    return-void
.end method

.method public onProcessing()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    .line 582
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->queryResultMessage()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    .line 583
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->SUCCESS:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V

    .line 584
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurPayMethod()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getChoseMoney()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->finishPay(Ljava/lang/String;Ljava/lang/Long;)V

    .line 585
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Balance pay success, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1700(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    const v2, 0x7f0e04f9

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    .line 591
    :cond_0
    return-void
.end method
