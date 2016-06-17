.class Lcom/wandoujia/p4/pay/fragment/PayFragment$10;
.super Ljava/lang/Object;
.source "PayFragment.java"

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
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 752
    const-string v0, "result"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public onSuccess(Lcom/wandoujia/p4/pay/model/OrderResult;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 709
    const-string v0, "result"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/OrderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 711
    const-string v1, "getNeedPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getNeedPassword()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v1, "show result"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getChoseMoney()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getNeedRechargeMoney()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getNeedRechargeMoney()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getChoseMoney()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getNeedRechargeMoney()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setFinish(Z)V

    .line 719
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Success:Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/PayResults;->ordinal()I

    move-result v2

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->title:Ljava/lang/String;

    iget-object v4, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->message:Ljava/lang/String;

    new-instance v5, Lcom/wandoujia/p4/pay/fragment/PayFragment$10$1;

    invoke-direct {v5, p0, v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$10$1;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$10;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->showResult(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;)V

    .line 748
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setFinish(Z)V

    .line 734
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Success:Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/PayResults;->ordinal()I

    move-result v2

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->title:Ljava/lang/String;

    iget-object v4, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->message:Ljava/lang/String;

    new-instance v5, Lcom/wandoujia/p4/pay/fragment/PayFragment$10$2;

    invoke-direct {v5, p0, v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$10$2;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$10;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->showResult(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/fragment/ResultFragment$OnFinishListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    check-cast p1, Lcom/wandoujia/p4/pay/model/OrderResult;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment$10;->onSuccess(Lcom/wandoujia/p4/pay/model/OrderResult;)V

    return-void
.end method
