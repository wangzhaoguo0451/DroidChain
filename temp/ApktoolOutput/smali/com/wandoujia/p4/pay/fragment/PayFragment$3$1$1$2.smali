.class Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 293
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e0404

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 296
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 297
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->pay(Landroid/app/Activity;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 301
    return-void
.end method
