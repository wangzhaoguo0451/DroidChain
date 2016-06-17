.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7$1;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    .line 353
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->RECHARGE:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    sget-object v3, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->SUCCESS:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    const-string v4, "Recharge success!"

    iget-object v5, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;

    iget-object v5, v5, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v5}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper;->invoke(Landroid/app/Activity;ILcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method
