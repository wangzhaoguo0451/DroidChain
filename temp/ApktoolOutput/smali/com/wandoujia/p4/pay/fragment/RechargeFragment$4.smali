.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

.field final synthetic val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    iput-object p3, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    move v4, v2

    :goto_0
    const/4 v0, 0x5

    if-ge v4, v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1000()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_2
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 267
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$700(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v3

    iget-object v5, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    iget-object v6, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-virtual {v0, v3, v5, v6}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;->queryStatus(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 269
    const-wide/16 v6, 0x7d0

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$4;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    const-string v1, "\u5145\u503c\u5361\u652f\u4ed8\u5df2\u7ecf\u63d0\u4ea4\uff0c\u7b49\u5f85\u8fd0\u8425\u5546\u901a\u77e5\u3002"

    invoke-interface {v0, v1}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onPending(Ljava/lang/String;)V

    .line 275
    return-void
.end method
