.class Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;
.super Ljava/lang/Object;
.source "ResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;->val$message:Ljava/lang/String;

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    const-string v0, "toast"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in toast, Might UI thread be not available. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method