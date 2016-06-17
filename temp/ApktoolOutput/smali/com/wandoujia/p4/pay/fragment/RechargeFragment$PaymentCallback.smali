.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/PayCallBack;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 421
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V

    .line 422
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Balance pay failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 425
    if-nez p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    sget-object v1, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Fail:Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/PayResults;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    const v3, 0x7f0e0506

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback$1;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p2, v3}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->showResult(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;)V

    goto :goto_0
.end method

.method public onPending(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 389
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 390
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->queryResultMessage()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1600(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    .line 391
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Balance pay pending, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    .line 411
    :cond_0
    return-void
.end method

.method public onProcessing()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 375
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 376
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->queryResultMessage()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1600(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    .line 377
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->SUCCESS:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V

    .line 379
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Balance pay success, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    const v2, 0x7f0e0507

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method
