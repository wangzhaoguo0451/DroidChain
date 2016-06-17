.class public final Lfzy;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetConfigInfoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgap;",
        "Lcom/wandoujia/p4/netcheck/model/Configs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lgap;

    invoke-direct {v0}, Lgap;-><init>()V

    new-instance v1, Lfzz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfzz;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 14
    return-void
.end method
