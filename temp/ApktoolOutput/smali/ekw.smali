.class public final Lekw;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "SearchDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lelb;",
        "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lelb;

    invoke-direct {v0}, Lelb;-><init>()V

    new-instance v1, Lekx;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lekx;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 56
    return-void
.end method
