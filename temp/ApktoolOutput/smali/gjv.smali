.class public final Lgjv;
.super Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;
.source "VideoProviderDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate",
        "<",
        "Lgkk;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video/model/ProviderInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lgkk;

    invoke-direct {v0}, Lgkk;-><init>()V

    new-instance v1, Lfwi;

    new-instance v2, Lgjw;

    invoke-direct {v2}, Lgjw;-><init>()V

    invoke-direct {v1, v2}, Lfwi;-><init>(Lczv;)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final getTypeToken()Lczv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lczv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/ProviderInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lgjx;

    invoke-direct {v0}, Lgjx;-><init>()V

    return-object v0
.end method
