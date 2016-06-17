.class Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    .line 640
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->PAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    sget-object v3, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Balance Pay failed! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;->val$message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    iget-object v5, v5, Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v5}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1700(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper;->invoke(Landroid/app/Activity;ILcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method
