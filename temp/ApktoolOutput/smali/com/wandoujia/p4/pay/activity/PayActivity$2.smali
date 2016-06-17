.class Lcom/wandoujia/p4/pay/activity/PayActivity$2;
.super Ljava/lang/Object;
.source "PayActivity.java"

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
.field final synthetic this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

.field final synthetic val$pay:Lcom/wandoujia/p4/pay/PayImpl;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/activity/PayActivity;Lcom/wandoujia/p4/pay/PayImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->val$pay:Lcom/wandoujia/p4/pay/PayImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 156
    const-string v0, "On CreateOrder response"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$000(Lcom/wandoujia/p4/pay/activity/PayActivity;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBalance()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$000(Lcom/wandoujia/p4/pay/activity/PayActivity;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$000(Lcom/wandoujia/p4/pay/activity/PayActivity;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->val$pay:Lcom/wandoujia/p4/pay/PayImpl;

    new-instance v1, Lcom/wandoujia/p4/pay/activity/PayActivity$2$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/activity/PayActivity$2$1;-><init>(Lcom/wandoujia/p4/pay/activity/PayActivity$2;)V

    new-instance v2, Lcom/wandoujia/p4/pay/activity/PayActivity$2$2;

    invoke-direct {v2, p0}, Lcom/wandoujia/p4/pay/activity/PayActivity$2$2;-><init>(Lcom/wandoujia/p4/pay/activity/PayActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/pay/PayImpl;->queryCampaignList(Lagu;Lagt;)V

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$000(Lcom/wandoujia/p4/pay/activity/PayActivity;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->showPaymentFragment()V

    .line 188
    :goto_1
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #calls: Lcom/wandoujia/p4/pay/activity/PayActivity;->failToPay()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$200(Lcom/wandoujia/p4/pay/activity/PayActivity;)V

    goto :goto_1
.end method
