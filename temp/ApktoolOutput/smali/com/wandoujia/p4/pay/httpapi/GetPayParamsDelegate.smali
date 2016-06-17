.class public Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetPayParamsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfxm;",
        "Lcom/wandoujia/p4/model/PayParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_URL:Ljava/lang/String; = "http://innerpay.wandoujia.com/pay/account/query?"

.field private static final APPKEY_ID:Ljava/lang/String; = "100000000"

.field public static final BONUS_SURL:Ljava/lang/String; = "https://pay.wandoujia.com/pay/bonus/query?"

.field public static final BONUS_URL:Ljava/lang/String; = "http://innerpay.wandoujia.com/pay/account/bonus/query?"

.field private static final SECRET_KEY:Ljava/lang/String; = "99b4efb45d49338573a00be7a1431511"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate$1;

    invoke-direct {v0, p1, p2}, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate$GetPayParamsProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate$GetPayParamsProcessor;-><init>(Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate$1;)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 50
    return-void
.end method

.method public static getBonusContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    const-string v1, "appkey_id"

    const-string v2, "100000000"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "wdj_auth"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "status"

    const-string v2, "VALID"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
