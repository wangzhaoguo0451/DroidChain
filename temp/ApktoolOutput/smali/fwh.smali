.class public final Lfwh;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "GetDarkKnowledgeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lfxl;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/model/GoldenCardModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lfxl;

    invoke-direct {v0}, Lfxl;-><init>()V

    new-instance v1, Lfwi;

    invoke-direct {v1}, Lfwi;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 20
    return-void
.end method
