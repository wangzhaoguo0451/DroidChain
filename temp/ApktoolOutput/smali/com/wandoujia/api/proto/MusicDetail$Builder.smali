.class public final Lcom/wandoujia/api/proto/MusicDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MusicDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/MusicDetail;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/MusicDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/MusicDetail$Builder;->build()Lcom/wandoujia/api/proto/MusicDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/MusicDetail;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/wandoujia/api/proto/MusicDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/MusicDetail;-><init>(Lcom/wandoujia/api/proto/MusicDetail$Builder;Ld;)V

    return-object v0
.end method
