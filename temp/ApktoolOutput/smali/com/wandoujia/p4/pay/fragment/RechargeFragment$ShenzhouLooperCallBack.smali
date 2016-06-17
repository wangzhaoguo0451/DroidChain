.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;
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
    .line 445
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 466
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1002(Z)Z

    .line 467
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 468
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public onPending(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 455
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 456
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1700(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->onPending(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onProcessing()V
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProcessing"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 449
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 450
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1700(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;->onSuccess()V

    .line 451
    return-void
.end method
