.class public Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;
.super Lcom/wandoujia/p4/video2/model/VideoMetaModel;
.source "AnimeMetaModel.java"


# static fields
.field private static final serialVersionUID:J = -0xf149ddfffcc609dL


# instance fields
.field public creatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public finished:Z

.field public seiyuus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public updateFrequency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/model/VideoMetaModel;-><init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V

    .line 29
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->type:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->updateFrequency:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->updateFrequency:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-boolean v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->finished:Z

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->finished:Z

    .line 33
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->creatives:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->creatives:Ljava/util/List;

    .line 34
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->seiyuus:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->seiyuus:Ljava/util/List;

    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/feed/model/Feed;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/model/VideoMetaModel;-><init>(Lcom/wandoujia/feed/model/Feed;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/model/VideoMetaModel;-><init>(Ldd;)V

    .line 44
    return-void
.end method
