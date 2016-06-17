.class public Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;
.super Ljava/lang/Object;
.source "OldLocalVideoAlbumModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field configVersion:I

.field lastModifyTime:J

.field lastPlayTime:J

.field readedEpisodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field readedEpisodesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$ReadLocalEpisodeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodes:Ljava/util/Set;

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;->readedEpisodesMap:Ljava/util/Map;

    return-void
.end method
