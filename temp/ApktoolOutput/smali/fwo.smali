.class public final Lfwo;
.super Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;
.source "GetTagAppsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate",
        "<",
        "Lfxt;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/entities/app/TagAppsInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lfxt;

    invoke-direct {v0}, Lfxt;-><init>()V

    new-instance v1, Lfwq;

    invoke-direct {v1}, Lfwq;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 21
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
            "Lcom/wandoujia/entities/app/TagAppsInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lfwp;

    invoke-direct {v0}, Lfwp;-><init>()V

    return-object v0
.end method
