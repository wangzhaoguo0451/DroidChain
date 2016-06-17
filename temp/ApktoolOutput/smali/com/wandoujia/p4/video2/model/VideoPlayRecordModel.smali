.class public Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;
.super Ljava/lang/Object;
.source "VideoPlayRecordModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x258ef9f16c77a1daL


# instance fields
.field private episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field private filePath:Ljava/lang/String;

.field public final metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private playModel:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

.field private playModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J

.field private videoProgress:I

.field private videoTotalLength:I


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 33
    return-void
.end method

.method public static parse(Landroid/database/Cursor;)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;
    .locals 6
    .parameter

    .prologue
    .line 36
    new-instance v3, Lcvo;

    invoke-direct {v3}, Lcvo;-><init>()V

    .line 38
    :try_start_0
    const-string v0, "video_meta"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v3, v0, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 40
    const-string v1, "video_episode"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-virtual {v3, v1, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 43
    const-string v2, "video_play_info"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    invoke-virtual {v3, v2, v4}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    .line 46
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->refreshPlayType()V

    .line 49
    :cond_0
    new-instance v4, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-direct {v4, v0}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;-><init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)V

    .line 50
    const-string v0, "play_model_list"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lgly;

    invoke-direct {v5}, Lgly;-><init>()V

    invoke-virtual {v5}, Lgly;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    .line 55
    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->refreshPlayType()V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->setEpisodeModel(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V

    .line 59
    invoke-virtual {v4, v2}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->setPlayModel(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V

    .line 60
    const-string v1, "timestamp"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->setTimestamp(J)V

    .line 61
    const-string v1, "file_path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->setFilePath(Ljava/lang/String;)V

    .line 62
    const-string v1, "video_total_length"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->setVideoTotalLength(I)V

    .line 63
    const-string v1, "video_progress"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->setVideoProgress(I)V

    .line 64
    invoke-virtual {v4, v0}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->setPlayModelList(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 65
    goto :goto_1
.end method


# virtual methods
.method public getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayModel()Lcom/wandoujia/p4/video2/model/VideoPlayModel;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->playModel:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    return-object v0
.end method

.method public getPlayModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->playModelList:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->timestamp:J

    return-wide v0
.end method

.method public getVideoProgress()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->videoProgress:I

    return v0
.end method

.method public getVideoTotalLength()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->videoTotalLength:I

    return v0
.end method

.method public setEpisodeModel(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 97
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->filePath:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPlayModel(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->playModel:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    .line 105
    return-void
.end method

.method public setPlayModelList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->playModelList:Ljava/util/List;

    .line 117
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->timestamp:J

    .line 137
    return-void
.end method

.method public setVideoProgress(I)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->videoProgress:I

    .line 129
    return-void
.end method

.method public setVideoTotalLength(I)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->videoTotalLength:I

    .line 113
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    const-string v1, "video_id"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v1, "video_title"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "video_total_length"

    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->videoTotalLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v1, "video_progress"

    iget v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->videoProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string v1, "file_path"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v1

    .line 83
    const-string v2, "video_meta"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    const-class v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v1, v3, v4}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "video_episode"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    const-class v4, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-virtual {v1, v3, v4}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "video_play_info"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->playModel:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    const-class v4, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    invoke-virtual {v1, v3, v4}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "play_model_list"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->playModelList:Ljava/util/List;

    new-instance v4, Lglz;

    invoke-direct {v4}, Lglz;-><init>()V

    invoke-virtual {v4}, Lglz;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v0
.end method
