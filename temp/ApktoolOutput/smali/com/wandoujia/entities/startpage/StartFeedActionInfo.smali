.class public Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
.super Ljava/lang/Object;
.source "StartFeedActionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private app:Lcom/wandoujia/entities/app/AppLiteInfo;

.field private closeAfterClick:Z

.field private closeFeedName:Ljava/lang/String;

.field private ebook:Lcom/wandoujia/entities/ebook/EbookBaseInfo;

.field private feedName:Ljava/lang/String;

.field private intent:Lcom/wandoujia/entities/startpage/FeedIntent;

.field private name:Ljava/lang/String;

.field private songList:Lcom/wandoujia/entities/startpage/SongListInfo;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private video:Lcom/wandoujia/entities/video/NetVideoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public getApp()Lcom/wandoujia/entities/app/AppLiteInfo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    return-object v0
.end method

.method public getCloseFeedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->closeFeedName:Ljava/lang/String;

    return-object v0
.end method

.method public getEbook()Lcom/wandoujia/entities/ebook/EbookBaseInfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->ebook:Lcom/wandoujia/entities/ebook/EbookBaseInfo;

    return-object v0
.end method

.method public getFeedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->feedName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Lcom/wandoujia/entities/startpage/FeedIntent;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->intent:Lcom/wandoujia/entities/startpage/FeedIntent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSongListInfo()Lcom/wandoujia/entities/startpage/SongListInfo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->songList:Lcom/wandoujia/entities/startpage/SongListInfo;

    return-object v0
.end method

.method public getType()Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;
    .locals 1

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Lcom/wandoujia/entities/video/NetVideoInfo;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->video:Lcom/wandoujia/entities/video/NetVideoInfo;

    return-object v0
.end method

.method public isCloseAfterClick()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->closeAfterClick:Z

    return v0
.end method

.method public setApp(Lcom/wandoujia/entities/app/AppLiteInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    .line 101
    return-void
.end method

.method public setCloseAfterClick(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->closeAfterClick:Z

    .line 117
    return-void
.end method

.method public setCloseFeedName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->closeFeedName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setEbook(Lcom/wandoujia/entities/ebook/EbookBaseInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->ebook:Lcom/wandoujia/entities/ebook/EbookBaseInfo;

    .line 105
    return-void
.end method

.method public setFeedName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->feedName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setIntent(Lcom/wandoujia/entities/startpage/FeedIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->intent:Lcom/wandoujia/entities/startpage/FeedIntent;

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->name:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSongList(Lcom/wandoujia/entities/startpage/SongListInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->songList:Lcom/wandoujia/entities/startpage/SongListInfo;

    .line 125
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->type:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->url:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setVideo(Lcom/wandoujia/entities/video/NetVideoInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo;->video:Lcom/wandoujia/entities/video/NetVideoInfo;

    .line 109
    return-void
.end method
