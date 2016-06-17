.class public Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;
.super Ljava/lang/Object;
.source "LocalVideoAlbumModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Lgkn;
.implements Ljava/io/Serializable;


# static fields
.field private static gson:Lcvo; = null

.field private static final serialVersionUID:J = -0x2de1bd20055a27bbL


# instance fields
.field public createdTime:J

.field private episodeModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field private isDownloaded:Z

.field public isRead:Z

.field public lastModifyTime:J

.field public metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field public playedTime:J

.field public size:J

.field public videoId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->gson:Lcvo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    return-void
.end method

.method public static parse(Landroid/database/Cursor;)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;
    .locals 14
    .parameter

    .prologue
    .line 113
    :try_start_0
    const-string v0, "video_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 114
    sget-object v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->gson:Lcvo;

    const-string v1, "video_meta_model"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v0, v1, v4}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 117
    const-string v1, "is_downloaded"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 119
    const-string v1, "is_read"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 120
    const-string v1, "size"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 121
    const-string v1, "played_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 122
    const-string v1, "created_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 123
    const-string v1, "last_modify_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 124
    new-instance v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-direct {v1}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;-><init>()V

    .line 125
    iput-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    .line 126
    iput-object v0, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 127
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isDownloaded:Z

    .line 128
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isRead:Z

    .line 129
    iput-wide v6, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->size:J

    .line 130
    iput-wide v8, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->playedTime:J

    .line 131
    iput-wide v10, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->createdTime:J

    .line 132
    iput-wide v12, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->lastModifyTime:J
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 135
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshSize()V
    .locals 6

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->size:J

    .line 90
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->refreshFileModelListSize()V

    .line 94
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->size:J

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->size:J

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;
    .locals 4

    .prologue
    .line 155
    new-instance v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-direct {v1}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;-><init>()V

    .line 156
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    iput-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 160
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    iput-object v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    .line 163
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iput-object v0, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 164
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isDownloaded:Z

    iput-boolean v0, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isDownloaded:Z

    .line 165
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isRead:Z

    iput-boolean v0, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isRead:Z

    .line 166
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->size:J

    iput-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->size:J

    .line 167
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->playedTime:J

    iput-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->playedTime:J

    .line 168
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->createdTime:J

    iput-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->createdTime:J

    .line 169
    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->lastModifyTime:J

    iput-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->lastModifyTime:J

    .line 170
    return-object v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->clone()Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedEpisodeModelList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    return-object v1
.end method

.method public getEpisodeModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    return-object v0
.end method

.method public getLocalEpisodeModelById(J)Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;
    .locals 5
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 47
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 52
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isDownloaded:Z

    return v0
.end method

.method public markEpisodeDownloaded(J)V
    .locals 5
    .parameter

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 103
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->setDownloaded(Z)V

    .line 105
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->refreshSize()V

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method public setDownloaded(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isDownloaded:Z

    .line 82
    return-void
.end method

.method public setEpisodeModelList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->episodeModelList:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->refreshSize()V

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    const-string v1, "video_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v1, "is_downloaded"

    iget-boolean v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isDownloaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "is_read"

    iget-boolean v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "size"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v1, "played_time"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->playedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    const-string v1, "created_time"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->createdTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v1, "last_modify_time"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->lastModifyTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    const-string v1, "video_meta_model"

    sget-object v2, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->gson:Lcvo;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    const-class v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v2, v3, v4}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method
