.class public final enum Lcom/wandoujia/p4/video2/VideoOptionFields;
.super Ljava/lang/Enum;
.source "VideoOptionFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/VideoOptionFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_API_ANIME_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_API_ANIME_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_API_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_API_DOWNLOAD_ALL:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_API_EPISODE:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_API_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_API_VIDEO_TYPE:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_API_WITH_PLAY_INFO:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_EPISODE_API_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_EPISODE_API_EPISODE_MODEL:Lcom/wandoujia/p4/video2/VideoOptionFields;

.field public static final enum VIDEO_EPISODE_API_PLAY:Lcom/wandoujia/p4/video2/VideoOptionFields;


# instance fields
.field private optionFields:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 14
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_API_EPISODE"

    const-string v2, ","

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "videoEpisodes.id"

    aput-object v4, v3, v7

    const-string v4, "videoEpisodes.episodeDate"

    aput-object v4, v3, v8

    const-string v4, "videoEpisodes.updatedDate"

    aput-object v4, v3, v9

    const-string v4, "videoEpisodes.episodeNum"

    aput-object v4, v3, v10

    const-string v4, "videoEpisodes.title"

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const-string v5, "videoEpisodes.noPlayExpDownloadUrls"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "videoEpisodes.noDownloadUrls"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "videoEpisodes.noPlayInfos"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "videoEpisodes.noPrivateDownloadUrls"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "videoEpisodes.downloadUrls.providerName"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "videoEpisodes.privateDownloadUrls.providerName"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "videoEpisodes.playInfo.title"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "videoEpisodes.playInfo.url"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_EPISODE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 30
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_API_META"

    const-string v2, ","

    const/16 v3, 0x19

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_EPISODE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "id"

    aput-object v4, v3, v8

    const-string v4, "type"

    aput-object v4, v3, v9

    const-string v4, "subType"

    aput-object v4, v3, v10

    const-string v4, "title"

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const-string v5, "noDownloadUrls"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "noPlayInfos"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "noPlayExpDownloadUrls"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "description"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "cover.*,"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "categories.*"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "downloadCount"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "updatedDate"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "createdDate"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "releaseDate"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "totalEpisodesNum"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "latestEpisodeNum"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "latestEpisodeDate"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "providerNames"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "recommend"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "section_recommend"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "totalSize"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "subscribeUrl"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "noPrivateDownloadUrls"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "sectionKeys"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 58
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_API_DETAIL"

    const-string v2, ","

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "directors"

    aput-object v4, v3, v8

    const-string v4, "actors"

    aput-object v4, v3, v9

    const-string v4, "marketRatings.*"

    aput-object v4, v3, v10

    const-string v4, "pictures.*"

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const-string v5, "region"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "tags"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "previewEpisodes.*"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "marketComments.*"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 69
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_API_WITH_PLAY_INFO"

    const-string v2, ","

    new-array v3, v9, [Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "videoEpisodes.playInfo.*"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_WITH_PLAY_INFO:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 75
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_API_DOWNLOAD_ALL"

    const-string v2, ","

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_EPISODE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "videoEpisodes.playInfo.url"

    aput-object v4, v3, v8

    const-string v4, "videoEpisodes.playInfo.title"

    aput-object v4, v3, v9

    const-string v4, "videoEpisodes.playInfo.promotType"

    aput-object v4, v3, v10

    const-string v4, "videoEpisodes.downloadUrls.providerName"

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const-string v5, "videoEpisodes.downloadUrls.sharpness.HIGH.accelUrl"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "videoEpisodes.downloadUrls.sharpness.HIGH.size"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "videoEpisodes.downloadUrls.sharpness.HIGH.url"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "videoEpisodes.downloadUrls.sharpness.HIGH.sharpnessName"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "videoEpisodes.downloadUrls.sharpness.SUPER.accelUrl"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "videoEpisodes.downloadUrls.sharpness.SUPER.size"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "videoEpisodes.downloadUrls.sharpness.SUPER.url"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "videoEpisodes.downloadUrls.sharpness.SUPER.sharpnessName"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "videoEpisodes.downloadUrls.sharpness.NORMAL.accelUrl"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "videoEpisodes.downloadUrls.sharpness.NORMAL.size"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "videoEpisodes.downloadUrls.sharpness.NORMAL.url"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "videoEpisodes.downloadUrls.sharpness.NORMAL.sharpnessName"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_DOWNLOAD_ALL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 95
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_API_VIDEO_TYPE"

    const/4 v2, 0x5

    const-string v3, ","

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v4, v7

    const-string v5, "type"

    aput-object v5, v4, v8

    const-string v5, "subType"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_VIDEO_TYPE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 101
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_API_ANIME_META"

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",extras.anime.type,extras.anime.updateFrequency,extras.anime.finished,extras.anime.creatives,extras.anime.seiyuus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_ANIME_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 108
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_API_ANIME_DETAIL"

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",extras.anime.type,extras.anime.updateFrequency,extras.anime.finished,extras.anime.creatives,extras.anime.seiyuus,extras.anime.chName,extras.anime.jpName,extras.anime.romaji,extras.anime.enName,extras.anime.originals,extras.anime.supervisors,extras.anime.characterSet,extras.anime.musicSupervisions,extras.anime.themeSingers,extras.anime.finishTime,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extras.anime.premiere,extras.anime.companies"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_ANIME_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 132
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_EPISODE_API_EPISODE_MODEL"

    const/16 v2, 0x8

    const-string v3, ","

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v4, v7

    const-string v5, "episodeDate"

    aput-object v5, v4, v8

    const-string v5, "updatedDate"

    aput-object v5, v4, v9

    const-string v5, "episodeNum"

    aput-object v5, v4, v10

    const-string v5, "title"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "noDownloadUrls"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "noPlayInfos"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "noPrivateDownloadUrls"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "noPlayExpDownloadUrls"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_EPISODE_MODEL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 143
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_EPISODE_API_DOWNLOAD"

    const/16 v2, 0x9

    const-string v3, ","

    const/16 v4, 0x13

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_EPISODE_MODEL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v5}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "privateDownloadUrls.*"

    aput-object v5, v4, v8

    const-string v5, "playInfo.url"

    aput-object v5, v4, v9

    const-string v5, "playInfo.title"

    aput-object v5, v4, v10

    const-string v5, "playInfo.promotType"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "downloadUrls.providerName"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "downloadUrls.promotType"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "downloadUrls.sharpness.HIGH.accelUrl"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "downloadUrls.sharpness.HIGH.size"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "downloadUrls.sharpness.HIGH.url"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "downloadUrls.sharpness.HIGH.sharpnessName"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "downloadUrls.sharpness.SUPER.accelUrl"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "downloadUrls.sharpness.SUPER.size"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "downloadUrls.sharpness.SUPER.url"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "downloadUrls.sharpness.SUPER.sharpnessName"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "downloadUrls.sharpness.NORMAL.accelUrl"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "downloadUrls.sharpness.NORMAL.size"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "downloadUrls.sharpness.NORMAL.url"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "downloadUrls.sharpness.NORMAL.sharpnessName"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 164
    new-instance v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    const-string v1, "VIDEO_EPISODE_API_PLAY"

    const/16 v2, 0xa

    const-string v3, ","

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "playInfo.action"

    aput-object v5, v4, v7

    const-string v5, "playInfo.extra"

    aput-object v5, v4, v8

    const-string v5, "playInfo.openType"

    aput-object v5, v4, v9

    const-string v5, "playInfo.packageName"

    aput-object v5, v4, v10

    const-string v5, "playInfo.params.*"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "playInfo.title"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "playInfo.url"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "playInfo.uri"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "playInfo.promotType"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/VideoOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_PLAY:Lcom/wandoujia/p4/video2/VideoOptionFields;

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/wandoujia/p4/video2/VideoOptionFields;

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_EPISODE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v1, v0, v9

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_WITH_PLAY_INFO:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v1, v0, v10

    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_DOWNLOAD_ALL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v1, v0, v11

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_VIDEO_TYPE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_ANIME_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_ANIME_DETAIL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_EPISODE_MODEL:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_EPISODE_API_PLAY:Lcom/wandoujia/p4/video2/VideoOptionFields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->$VALUES:[Lcom/wandoujia/p4/video2/VideoOptionFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 179
    iput-object p3, p0, Lcom/wandoujia/p4/video2/VideoOptionFields;->optionFields:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoOptionFields;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/VideoOptionFields;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/VideoOptionFields;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/p4/video2/VideoOptionFields;->$VALUES:[Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/VideoOptionFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/VideoOptionFields;

    return-object v0
.end method


# virtual methods
.method public final getOptionFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/wandoujia/p4/video2/VideoOptionFields;->optionFields:Ljava/lang/String;

    return-object v0
.end method
