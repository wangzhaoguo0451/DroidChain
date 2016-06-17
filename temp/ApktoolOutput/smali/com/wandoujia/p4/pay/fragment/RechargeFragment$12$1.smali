.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/CallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/p4/pay/model/CallBack",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 587
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    const v2, 0x7f0e0453

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    .line 591
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setRechargeInfo(Ljava/lang/String;)V

    .line 579
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1700(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/fragment/RechargeFragment$PaymentCallback;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->pay(Landroid/app/Activity;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 583
    return-void
.end method
