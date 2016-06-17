.class public Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;
.super Ljava/lang/Object;
.source "VideoDefaultSourceModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6ef93b6435ed5bb9L


# instance fields
.field public final defaultDownloadSource:Ljava/lang/String;

.field public final defaultPlaySource:Ljava/lang/String;

.field public final defaultSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

.field public final isDefaultDownloadSourcePrivate:Z

.field public final videoId:J


# direct methods
.method public constructor <init>(JLcom/wandoujia/p4/video/model/VideoSharpness;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->videoId:J

    .line 28
    iput-object p3, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 29
    iput-object p4, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultPlaySource:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultDownloadSource:Ljava/lang/String;

    .line 31
    iput-boolean p6, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->isDefaultDownloadSourcePrivate:Z

    .line 32
    return-void
.end method

.method public static parse(Landroid/database/Cursor;)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;
    .locals 8
    .parameter

    .prologue
    .line 35
    const-string v0, "sharpness"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoSharpness;->getVideoSharpness(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-result-object v4

    .line 38
    const-string v0, "play_source"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 39
    const-string v0, "download_source"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 40
    const-string v0, "video_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 41
    const-string v0, "is_default_download_source_private"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 44
    new-instance v1, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    invoke-direct/range {v1 .. v7}, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;-><init>(JLcom/wandoujia/p4/video/model/VideoSharpness;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "sharpness"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/VideoSharpness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultPlaySource:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 54
    const-string v1, "play_source"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultPlaySource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultDownloadSource:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 57
    const-string v1, "download_source"

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->defaultDownloadSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    const-string v1, "is_default_download_source_private"

    iget-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->isDefaultDownloadSourcePrivate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "video_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;->videoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    return-object v0
.end method
