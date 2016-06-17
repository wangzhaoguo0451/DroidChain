.class public final Lelm;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "SuggestionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lelo;",
        "Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lelo;

    invoke-direct {v0}, Lelo;-><init>()V

    new-instance v1, Leln;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Leln;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 17
    return-void
.end method
