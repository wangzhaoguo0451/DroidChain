.class public abstract Lfxm;
.super Lfxh;
.source "PhoenixHttpRequestBuilder.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "ch"

.field private static final FROM:Ljava/lang/String; = "f"

.field private static final FROM_SOURCE:Ljava/lang/String; = "phoenix2"

.field private static final NET:Ljava/lang/String; = "net"

.field private static final NET_FREE:Ljava/lang/String; = "free"

.field private static final USER:Ljava/lang/String; = "u"

.field private static final VERSION:Ljava/lang/String; = "v"

.field private static final VERSION_CODE:Ljava/lang/String; = "vc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lfxh;-><init>()V

    return-void
.end method


# virtual methods
.method public setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-super {p0, p1}, Lfxh;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 35
    new-instance v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    invoke-direct {v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->putAll(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 37
    invoke-virtual {p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->clear()V

    .line 38
    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-object v1, v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-boolean v0, v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->isCacheableParam:Z

    invoke-virtual {p1, v3, v1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "f"

    const-string v1, "phoenix2"

    invoke-virtual {p1, v0, v1, v5}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    const-string v0, "v"

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    const-string v0, "vc"

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    const-string v0, "u"

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    const-string v0, "ch"

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    invoke-static {}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isInFreeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "net"

    const-string v1, "free"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    :goto_1
    return-void

    .line 57
    :cond_1
    const-string v0, "net"

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method
