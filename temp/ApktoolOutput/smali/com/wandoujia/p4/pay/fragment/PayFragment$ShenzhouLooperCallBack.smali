.class Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/PayCallBack;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 694
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2602(Z)Z

    .line 695
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    .line 696
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public onPending(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    .line 684
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onPending(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public onProcessing()V
    .locals 2

    .prologue
    .line 689
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProcessing"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V

    .line 678
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$ShenzhouLooperCallBack;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getPayCallback()Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onSuccess()V

    .line 679
    return-void
.end method
