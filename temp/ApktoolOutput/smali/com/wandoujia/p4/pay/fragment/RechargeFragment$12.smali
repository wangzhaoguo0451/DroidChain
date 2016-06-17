.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

.field final synthetic val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 571
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 572
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    const v3, 0x7f0e0404

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$700(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12$1;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment$12;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/PayImpl;->getUnicomPayInfo(Lcom/wandoujia/p4/pay/model/CallBack;)V

    .line 594
    return-void
.end method
