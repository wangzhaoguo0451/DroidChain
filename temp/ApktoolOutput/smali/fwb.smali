.class public final Lfwb;
.super Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;
.source "GetAppLiteInfoListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate",
        "<",
        "Lfxi;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/entities/app/AppLiteInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lfxi;

    invoke-direct {v0}, Lfxi;-><init>()V

    new-instance v1, Lfxc;

    invoke-direct {v1}, Lfxc;-><init>()V

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
            "Lcom/wandoujia/entities/app/AppLiteInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lfwc;

    invoke-direct {v0}, Lfwc;-><init>()V

    return-object v0
.end method
