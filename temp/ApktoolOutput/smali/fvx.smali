.class public final Lfvx;
.super Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;
.source "GetAppBriefInfoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate",
        "<",
        "Lfxg;",
        "Lcom/wandoujia/entities/app/AppDetailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lfvy;

    invoke-direct {v0}, Lfvy;-><init>()V

    new-instance v1, Lfwa;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfwa;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/CacheableGZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 27
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
            "Lcom/wandoujia/entities/app/AppDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lfvz;

    invoke-direct {v0}, Lfvz;-><init>()V

    return-object v0
.end method
