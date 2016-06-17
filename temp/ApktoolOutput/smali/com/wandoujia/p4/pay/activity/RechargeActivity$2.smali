.class Lcom/wandoujia/p4/pay/activity/RechargeActivity$2;
.super Ljava/lang/Object;
.source "RechargeActivity.java"

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
.field final synthetic this$0:Lcom/wandoujia/p4/pay/activity/RechargeActivity;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/activity/RechargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/RechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 134
    invoke-static {}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recharge in P4 failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/RechargeActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->access$100(Lcom/wandoujia/p4/pay/activity/RechargeActivity;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {v0, p2, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 136
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/RechargeActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/RechargeActivity;->activity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->access$100(Lcom/wandoujia/p4/pay/activity/RechargeActivity;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 137
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/activity/RechargeActivity$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 128
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/RechargeActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/RechargeActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->showRechargeFragment()V

    .line 129
    return-void
.end method
