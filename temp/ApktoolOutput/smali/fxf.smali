.class public abstract Lfxf;
.super Lfxh;
.source "AbstractAuthorizedRequestBuilder.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lfxh;-><init>()V

    .line 27
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {p0, v0}, Lfxf;->setMethod(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 28
    invoke-virtual {p0}, Lfxf;->enableCompressRequestContent()Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 29
    return-void
.end method


# virtual methods
.method protected setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Lfxh;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    const-string v2, "timestamp"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    const-string v2, "token"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/wandoujia/rpc/http/util/PhoenixAuthorizeUtil;->generateToken(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v4}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    const-string v0, "id"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CipherUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    const-string v0, "entry"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v4}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    const-string v0, "udid"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    const-string v0, "version"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    const-string v0, "channel"

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    return-void
.end method
