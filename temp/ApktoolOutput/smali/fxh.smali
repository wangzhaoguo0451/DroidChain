.class public abstract Lfxh;
.super Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
.source "BaseHttpRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lfxe;

    invoke-direct {v0}, Lfxe;-><init>()V

    invoke-direct {p0, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;-><init>(Lcom/wandoujia/rpc/http/provider/CookieProvider;)V

    .line 14
    return-void
.end method
