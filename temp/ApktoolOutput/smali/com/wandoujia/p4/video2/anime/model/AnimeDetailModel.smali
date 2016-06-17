.class public Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;
.super Lcom/wandoujia/p4/video2/model/VideoDetailModel;
.source "AnimeDetailModel.java"


# static fields
.field private static final serialVersionUID:J = 0x59004ebe9d165a6dL


# instance fields
.field public chName:Ljava/lang/String;

.field public characterSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public companies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public enName:Ljava/lang/String;

.field public finishTime:J

.field public jpName:Ljava/lang/String;

.field public musicSupervisions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public originals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public premiere:J

.field public romaji:Ljava/lang/String;

.field public supervisors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public themeSingers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;-><init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V

    .line 48
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->chName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->chName:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->jpName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->jpName:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->romaji:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->romaji:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->enName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->enName:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->originals:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->originals:Ljava/util/List;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->supervisors:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->supervisors:Ljava/util/List;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->characterSet:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->characterSet:Ljava/util/List;

    .line 56
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->musicSupervisions:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->musicSupervisions:Ljava/util/List;

    .line 57
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->themeSingers:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->themeSingers:Ljava/util/List;

    .line 58
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-wide v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->finishTime:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->finishTime:J

    .line 59
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-wide v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->premiere:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->premiere:J

    .line 60
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->extras:Lcom/wandoujia/entities/video/NetVideoExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoExtras;->anime:Lcom/wandoujia/entities/video/AnimeExtras;

    iget-object v0, v0, Lcom/wandoujia/entities/video/AnimeExtras;->companies:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->companies:Ljava/util/List;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method protected createVideoMetaModel(Lcom/wandoujia/entities/video/NetVideoInfo;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;-><init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V

    return-object v0
.end method

.method public getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->videoMetaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    check-cast v0, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    return-object v0
.end method

.method public bridge synthetic getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/anime/model/AnimeDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    move-result-object v0

    return-object v0
.end method
