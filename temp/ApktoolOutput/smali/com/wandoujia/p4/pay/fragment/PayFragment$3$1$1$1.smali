.class Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/PayCallBack;


# instance fields
.field final synthetic this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

.field final synthetic val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;Lcom/wandoujia/p4/pay/model/WandouOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onPending(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    return-void
.end method

.method public onProcessing()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    const-string v1, "\u6b63\u5728\u652f\u4ed8"

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startSheznouLoop"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8fde\u63a5\u8fd0\u8425\u5546\u670d\u52a1\u5668\uff0c\u8bf7\u7a0d\u5019"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 264
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 265
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;->this$3:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1200(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;

    move-result-object v2

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->startSheznouLoop(Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1300(Lcom/wandoujia/p4/pay/fragment/PayFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 266
    return-void
.end method
