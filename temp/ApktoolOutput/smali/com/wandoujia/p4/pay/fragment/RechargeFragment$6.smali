.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$6;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$6;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    .line 312
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 313
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolleyError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$6;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$6;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/utils/ActivityUtil;->showErrorMessage(Landroid/content/Context;Lcom/android/volley/VolleyError;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$6;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->failToRecharge()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1500(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    .line 319
    return-void
.end method
