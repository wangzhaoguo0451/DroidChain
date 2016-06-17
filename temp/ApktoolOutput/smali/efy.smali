.class public abstract Lefy;
.super Lefz;
.source "PhoenixAuthorizedRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lefz;-><init>()V

    return-void
.end method


# virtual methods
.method public setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Lefz;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 17
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wandoujia/rpc/http/util/PhoenixAuthorizeUtil;->appendAuthorizeParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;Landroid/content/Context;)V

    .line 18
    const-string v0, "sdk"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
