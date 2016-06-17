.class public Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;
.super Ljava/lang/Object;
.source "LocalVideoEpisodeModel.java"

# interfaces
.implements Lgkn;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3d5b5078b83fda25L


# instance fields
.field public createdTime:J

.field public episodeDate:J

.field public episodeId:J

.field public episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field public episodeNum:I

.field private fileModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private isDownloaded:Z

.field public isFlvVideo:Z

.field public isRead:Z

.field public lastModifyTime:J

.field public localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

.field public playedTime:J

.field public providerName:Ljava/lang/String;

.field public size:J

.field public url:Ljava/lang/String;

.field public videoId:J


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalFileModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->videoId:J

    .line 62
    iget-wide v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    .line 63
    iget v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    iput v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeNum:I

    .line 64
    iget-wide v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeDate:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeDate:J

    .line 65
    iput-object p3, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 66
    iget-object v0, p4, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->providerName:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->url:Ljava/lang/String;

    .line 68
    iget-object v0, p4, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 69
    invoke-virtual {p0, p5}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->setFileModelList(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public constructor <init>(JLcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/video2/local/LocalVideoType;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/video2/local/LocalVideoType;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalFileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->videoId:J

    .line 134
    iget-wide v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    .line 135
    iget v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    iput v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeNum:I

    .line 136
    iget-wide v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeDate:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeDate:J

    .line 137
    iput-object p3, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 138
    iput-object p4, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->providerName:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->url:Ljava/lang/String;

    .line 140
    iput-object p6, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 141
    iput-object p7, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->fileModelList:Ljava/util/List;

    .line 142
    if-eqz p7, :cond_1

    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;

    .line 144
    if-eqz v0, :cond_0

    .line 145
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method public constructor <init>(JLcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalFileModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->videoId:J

    .line 84
    iget-wide v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    .line 85
    iget v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    iput v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeNum:I

    .line 86
    iget-wide v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeDate:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeDate:J

    .line 87
    iput-object p3, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 88
    iput-object p5, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->url:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/wandoujia/p4/video2/local/LocalVideoType;->COMMON:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 90
    invoke-virtual {p0, p4}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->setFileModelList(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public static parse(Landroid/database/Cursor;)Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;
    .locals 22
    .parameter

    .prologue
    .line 152
    new-instance v2, Lcvo;

    invoke-direct {v2}, Lcvo;-><init>()V

    .line 153
    const-string v3, "video_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 154
    const-string v3, "episode_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 155
    const-string v3, "video_episode_model"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-virtual {v2, v3, v6}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 158
    const-string v3, "provider_name"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    const-string v3, "url"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    const-string v3, "local_video_type"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->getLocalVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video2/local/LocalVideoType;

    move-result-object v9

    .line 162
    const-string v3, "local_file_model_list"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lgkp;

    invoke-direct {v10}, Lgkp;-><init>()V

    invoke-virtual {v10}, Lgkp;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 165
    const-string v2, "is_downloaded"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 167
    const-string v3, "is_read"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 168
    const-string v3, "is_flv_video"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 170
    const-string v3, "size"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 171
    const-string v3, "played_time"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 172
    const-string v3, "created_time"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 173
    const-string v3, "last_modify_time"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 174
    new-instance v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    invoke-direct/range {v3 .. v10}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;-><init>(JLcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/video2/local/LocalVideoType;Ljava/util/List;)V

    .line 178
    iput-boolean v11, v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isRead:Z

    .line 179
    iput-boolean v12, v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isFlvVideo:Z

    .line 180
    iput-boolean v2, v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isDownloaded:Z

    .line 181
    iput-wide v14, v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    .line 182
    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->playedTime:J

    .line 183
    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->createdTime:J

    .line 184
    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->lastModifyTime:J

    .line 185
    return-object v3
.end method


# virtual methods
.method public getFileModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalFileModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->fileModelList:Ljava/util/List;

    return-object v0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isDownloaded:Z

    return v0
.end method

.method public refreshFileModelListSize()V
    .locals 6

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    .line 117
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->fileModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;

    .line 118
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;->size:J

    .line 122
    :cond_0
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method

.method public setDownloaded(Z)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isDownloaded:Z

    .line 112
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->refreshFileModelListSize()V

    .line 113
    return-void
.end method

.method public setFileModelList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalFileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->fileModelList:Ljava/util/List;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    .line 96
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->fileModelList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    const-string v1, "video_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->videoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v1, "episode_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v1, "is_downloaded"

    iget-boolean v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isDownloaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "is_flv_video"

    iget-boolean v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isFlvVideo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "episode_num"

    iget v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v1, "episode_date"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v1, "provider_name"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "url"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "local_video_type"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "is_read"

    iget-boolean v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "size"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    const-string v1, "played_time"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->playedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string v1, "created_time"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->createdTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v1, "last_modify_time"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->lastModifyTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    .line 205
    const-string v2, "video_episode_model"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-virtual {v1, v3}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "local_file_model_list"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->fileModelList:Ljava/util/List;

    new-instance v4, Lgkq;

    invoke-direct {v4}, Lgkq;-><init>()V

    invoke-virtual {v4}, Lgkq;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-object v0
.end method
