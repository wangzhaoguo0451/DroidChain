.class public Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
.super Ljava/lang/Object;
.source "VideoAppPromotionLogBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EVENT_NAME_APP_PROMOTION:Ljava/lang/String; = "video.app.promotion"

.field private static final serialVersionUID:J = 0x7c6c41e4c2d9667cL


# instance fields
.field private action:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

.field private episodeId:J

.field private fromType:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

.field private playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

.field private playUrl:Ljava/lang/String;

.field private providerName:Ljava/lang/String;

.field private videoId:J

.field private videoType:Lcom/wandoujia/p4/video/model/VideoType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public send()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->action:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    .line 46
    return-object p0
.end method

.method public setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
    .locals 1
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->episodeId:J

    .line 71
    return-object p0
.end method

.method public setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->fromType:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    .line 51
    return-object p0
.end method

.method public setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->playType:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    .line 56
    return-object p0
.end method

.method public setPlayUrl(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->playUrl:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->providerName:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->videoId:J

    .line 66
    return-object p0
.end method

.method public setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    .line 61
    return-object p0
.end method
