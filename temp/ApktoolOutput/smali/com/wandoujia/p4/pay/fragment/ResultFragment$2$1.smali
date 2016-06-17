.class Lcom/wandoujia/p4/pay/fragment/ResultFragment$2$1;
.super Ljava/lang/Object;
.source "ResultFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/PayCallBack;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2$1;->this$1:Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2$1;->this$1:Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/ResultFragment;Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onPending(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    return-void
.end method

.method public onProcessing()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2$1;->this$1:Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$200(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setNeedPassword(Z)V

    .line 122
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2$1;->this$1:Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->queryResultMessage()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)V

    .line 123
    return-void
.end method
