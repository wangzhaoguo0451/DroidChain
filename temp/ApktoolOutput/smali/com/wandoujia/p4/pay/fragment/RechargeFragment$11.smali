.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/PayCallBack;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

.field final synthetic val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public onPending(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    return-void
.end method

.method public onProcessing()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    const-string v1, "\u6b63\u5728\u652f\u4ed8"

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startSheznouLoop"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u8fde\u63a5\u8fd0\u8425\u5546\u670d\u52a1\u5668\uff0c\u8bf7\u7a0d\u5019"

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$11;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouCallback:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1800(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/fragment/RechargeFragment$ShenzhouLooperCallBack;

    move-result-object v2

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->startSheznouLoop(Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1900(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 545
    return-void
.end method
