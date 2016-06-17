.class Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lcom/wandoujia/p4/pay/model/RechargePaySet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

.field final synthetic val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;Lcom/wandoujia/p4/pay/model/WandouOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/wandoujia/p4/pay/model/RechargePaySet;)V
    .locals 12
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    iget-object v1, p1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->rechargeInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setRechargeInfo(Ljava/lang/String;)V

    .line 233
    const-string v0, "rechargeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->rechargeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$money:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->doPay(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "order"

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrderIdPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getLinkOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setRechargeInfo(Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/Alipay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/Alipay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/p4/pay/paymethod/Alipay;->pay(Landroid/app/Activity;Lcom/wandoujia/p4/pay/model/WandouOrder;I)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->rechargeInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v1, "payid"

    const-string v2, "unionPayId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v1, Lcom/wandoujia/p4/pay/paymethod/UnionPay;

    invoke-direct {v1}, Lcom/wandoujia/p4/pay/paymethod/UnionPay;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "unionPayId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v0, v3}, Lcom/wandoujia/p4/pay/paymethod/UnionPay;->pay(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "pay"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 250
    :cond_2
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouCardNumber:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$700(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 252
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->shenzhouPassword:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$800(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShenZhou Pay... TODO..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$money:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$money:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getRechargeOrder(Ljava/lang/Long;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    .line 255
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v1

    const-string v3, "1"

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v4, v4, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$money:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    long-to-int v4, v8

    new-instance v7, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;

    invoke-direct {v7, p0, v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$1;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    invoke-virtual/range {v0 .. v7}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;->pay(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    goto/16 :goto_0

    .line 283
    :cond_3
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->TELECOM:Lcom/wandoujia/p4/pay/model/PayMethod;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/TelecomPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/TelecomPay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->val$order:Lcom/wandoujia/p4/pay/model/WandouOrder;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v3, v3, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v3, v3, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/p4/pay/paymethod/TelecomPay;->pay(Landroid/content/Context;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    goto/16 :goto_0

    .line 285
    :cond_4
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->UNICOM:Lcom/wandoujia/p4/pay/model/PayMethod;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getChoseMoney()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getChoseMoney()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    const-string v3, "sms_pay_check"

    const-string v4, "\u786e\u8ba4\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u652f\u4ed8 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\u5143\u8d2d\u4e70"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8c4c\u8c46\u5e01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1$2;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;)V

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v2, v3, v4, v0, v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1500(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    check-cast p1, Lcom/wandoujia/p4/pay/model/RechargePaySet;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;->onResponse(Lcom/wandoujia/p4/pay/model/RechargePaySet;)V

    return-void
.end method
