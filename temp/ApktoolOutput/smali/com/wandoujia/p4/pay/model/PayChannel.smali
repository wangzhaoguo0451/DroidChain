.class public Lcom/wandoujia/p4/pay/model/PayChannel;
.super Ljava/lang/Object;
.source "PayChannel.java"


# static fields
.field public static methodList:Ljava/lang/String;

.field private static payChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/PayChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alias:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rechargeItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayChannel;->payChannels:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayChannel;->methodList:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/PayChannel;->rechargeItemList:Ljava/util/List;

    .line 124
    return-void
.end method

.method public static fromList(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelNameList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayChannel;->methodList:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/PayChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayChannel;->payChannels:Ljava/util/List;

    return-object v0
.end method

.method public static getRechargeMoneyList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    .line 55
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayChannel;->payChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/PayChannel;

    .line 56
    iget-object v3, v0, Lcom/wandoujia/p4/pay/model/PayChannel;->name:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    :goto_0
    if-eqz v0, :cond_1

    .line 62
    iget-object v0, v0, Lcom/wandoujia/p4/pay/model/PayChannel;->rechargeItemList:Ljava/util/List;

    .line 64
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayChannel;->payChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 73
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    .line 74
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 80
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 81
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v9, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;

    invoke-static {v1, v9}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;

    .line 83
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 85
    :cond_0
    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 122
    :cond_1
    return-void

    .line 87
    :cond_2
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayChannel$1;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/model/PayChannel$1;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    invoke-static {v6}, Lcom/wandoujia/p4/pay/model/PayChannel;->fromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayChannel;->methodList:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    if-eqz v0, :cond_3

    .line 107
    new-instance v3, Lcom/wandoujia/p4/pay/model/PayChannel;

    invoke-direct {v3}, Lcom/wandoujia/p4/pay/model/PayChannel;-><init>()V

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/wandoujia/p4/pay/model/PayChannel;->alias:Ljava/lang/String;

    .line 109
    iget-object v1, v3, Lcom/wandoujia/p4/pay/model/PayChannel;->alias:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByName(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    .line 110
    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_3
    iput-object v1, v3, Lcom/wandoujia/p4/pay/model/PayChannel;->name:Ljava/lang/String;

    .line 111
    iget-object v1, v3, Lcom/wandoujia/p4/pay/model/PayChannel;->rechargeItemList:Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;

    .line 113
    if-eqz v0, :cond_4

    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 110
    :cond_5
    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->title()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 118
    :cond_6
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayChannel;->payChannels:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
