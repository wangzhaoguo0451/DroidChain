.class public abstract Lfxx;
.super Lfxm;
.source "PhoenixAuthorizedRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lfxm;-><init>()V

    return-void
.end method


# virtual methods
.method public setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 16
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wandoujia/rpc/http/util/PhoenixAuthorizeUtil;->appendAuthorizeParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;Landroid/content/Context;)V

    .line 17
    return-void
.end method
