.class public final Lfuz;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetGiftListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfvf;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lfvf;

    invoke-direct {v0}, Lfvf;-><init>()V

    new-instance v1, Lfva;

    invoke-direct {v1}, Lfva;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 23
    return-void
.end method
