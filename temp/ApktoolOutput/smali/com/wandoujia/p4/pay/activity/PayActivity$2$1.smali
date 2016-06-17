.class Lcom/wandoujia/p4/pay/activity/PayActivity$2$1;
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
.field final synthetic this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/activity/PayActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2$1;->this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/activity/PayActivity$2$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2$1;->this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$000(Lcom/wandoujia/p4/pay/activity/PayActivity;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2$1;->this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->showPaymentFragment()V

    .line 169
    :goto_0
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/ProgressDialogUtil;->dismiss()V

    .line 170
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2$1;->this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #calls: Lcom/wandoujia/p4/pay/activity/PayActivity;->failToPay()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$200(Lcom/wandoujia/p4/pay/activity/PayActivity;)V

    goto :goto_0
.end method
