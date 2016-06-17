.class public final Lfvv;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "DeleteMyGiftBeanDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfxp;",
        "Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lfxp;

    invoke-direct {v0}, Lfxp;-><init>()V

    new-instance v1, Lfvw;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfvw;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 13
    return-void
.end method
