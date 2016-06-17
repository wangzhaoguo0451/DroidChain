.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;
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
        "Lcom/wandoujia/p4/pay/model/OrderResult;",
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
    .line 339
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 366
    const-string v0, "result"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public onSuccess(Lcom/wandoujia/p4/pay/model/OrderResult;)V
    .locals 6
    .parameter

    .prologue
    .line 342
    const-string v0, "result"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/OrderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getNeedPassword()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setFinish(Z)V

    .line 346
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Success:Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/PayResults;->ordinal()I

    move-result v2

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->title:Ljava/lang/String;

    iget-object v4, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->message:Ljava/lang/String;

    new-instance v5, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7$1;

    invoke-direct {v5, p0, v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7$1;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->showResult(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;)V

    .line 362
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    check-cast p1, Lcom/wandoujia/p4/pay/model/OrderResult;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$7;->onSuccess(Lcom/wandoujia/p4/pay/model/OrderResult;)V

    return-void
.end method
