.class public final Lgad;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetPublicInfosDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lgaq;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lgaq;

    invoke-direct {v0}, Lgaq;-><init>()V

    new-instance v1, Lgae;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgae;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 13
    return-void
.end method
