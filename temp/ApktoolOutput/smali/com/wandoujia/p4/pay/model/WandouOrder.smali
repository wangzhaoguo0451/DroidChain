.class public Lcom/wandoujia/p4/pay/model/WandouOrder;
.super Ljava/lang/Object;
.source "WandouOrder.java"


# instance fields
.field private chargeType:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private mobileOperation:Z

.field private moneyInFen:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private orderId:Ljava/lang/Long;

.field private out_trade_no:Ljava/lang/String;

.field private rechargeInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->orderId:Ljava/lang/Long;

    .line 18
    iput-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->name:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->desc:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->moneyInFen:Ljava/lang/Long;

    .line 24
    iput-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->chargeType:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->message:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->rechargeInfo:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->mobileOperation:Z

    .line 43
    iput-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->out_trade_no:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->name:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->desc:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->moneyInFen:Ljava/lang/Long;

    .line 107
    return-void
.end method


# virtual methods
.method public fromJSONString(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "order_no"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->orderId:Ljava/lang/Long;

    .line 139
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->name:Ljava/lang/String;

    .line 140
    const-string v1, "desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->desc:Ljava/lang/String;

    .line 141
    const-string v1, "money"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->moneyInFen:Ljava/lang/Long;

    .line 142
    const-string v1, "message"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->message:Ljava/lang/String;

    .line 143
    const-string v1, "out_trade_no"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->out_trade_no:Ljava/lang/String;

    .line 144
    const-string v1, "mobile_operation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->mobileOperation:Z

    .line 145
    return-void
.end method

.method public getChargeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->chargeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMoneyInFen()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->moneyInFen:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->orderId:Ljava/lang/Long;

    return-object v0
.end method

.method public getOut_trade_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->out_trade_no:Ljava/lang/String;

    return-object v0
.end method

.method public getRehargeInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->rechargeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMoney()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "100"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->moneyInFen:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setChargeType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->chargeType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->desc:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->message:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setMobileOperation(Z)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->mobileOperation:Z

    .line 34
    return-void
.end method

.method public setMoneyInFen(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->moneyInFen:Ljava/lang/Long;

    .line 83
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setOrderId(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->orderId:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method public setOut_trade_no(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->out_trade_no:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRechargeInfo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->rechargeInfo:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    :try_start_0
    const-string v1, "order_no"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->orderId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "name"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "desc"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v1, "money"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->moneyInFen:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "message"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v1, "out_trade_no"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->out_trade_no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "mobile_operation"

    iget-boolean v2, p0, Lcom/wandoujia/p4/pay/model/WandouOrder;->mobileOperation:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
