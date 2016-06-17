.class public final Lcom/wandoujia/api/proto/SharePlatformEnum$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SharePlatformEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/SharePlatformEnum;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/SharePlatformEnum;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/SharePlatformEnum$Builder;->build()Lcom/wandoujia/api/proto/SharePlatformEnum;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/SharePlatformEnum;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/wandoujia/api/proto/SharePlatformEnum;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/SharePlatformEnum;-><init>(Lcom/wandoujia/api/proto/SharePlatformEnum$Builder;Ld;)V

    return-object v0
.end method
