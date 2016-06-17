.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

.field final synthetic val$money:J

.field final synthetic val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;JLcom/wandoujia/p4/pay/model/PayMethod;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iput-wide p2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->val$money:J

    iput-object p4, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 297
    const-string v0, "On CreateOrder response"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 299
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    #setter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1202(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/WandouOrder;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    .line 300
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iget-wide v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->val$money:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setChoseMoney(Ljava/lang/Long;)V

    .line 303
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->recharge(Lcom/wandoujia/p4/pay/model/PayMethod;Lcom/wandoujia/p4/pay/model/WandouOrder;)V
    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1400(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Lcom/wandoujia/p4/pay/model/PayMethod;Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->failToRecharge()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$1500(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V

    goto :goto_0
.end method
