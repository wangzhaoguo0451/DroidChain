.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 524
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    const v2, 0x7f0e0453

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    .line 528
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 518
    const-string v0, "tn"

    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/UnionPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/UnionPay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, p1, v2}, Lcom/wandoujia/p4/pay/paymethod/UnionPay;->pay(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 520
    return-void
.end method
