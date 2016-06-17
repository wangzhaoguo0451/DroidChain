.class public Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;
.super Ljava/lang/Object;
.source "OldLocalVideoEpisodeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME_END:Ljava/lang/String; = ".episode"

.field private static final POINT:Ljava/lang/String; = "."

.field private static final serialVersionUID:J = 0x30574f6a1b6b89b1L


# instance fields
.field private config:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

.field private episodeDate:J

.field private episodeId:J

.field private episodeNum:I

.field private final filePath:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->filePath:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/wandoujia/base/utils/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Ld;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->title:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Ld;->Z(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->episodeNum:I

    .line 33
    invoke-static {p1}, Ld;->ab(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->episodeId:J

    .line 34
    invoke-static {v0}, Ld;->aa(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->episodeDate:J

    .line 35
    invoke-direct {p0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->readConfig()Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    .line 36
    return-void
.end method

.method private declared-synchronized readConfig()Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Ld;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getConfigFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :try_start_1
    new-instance v2, Lczw;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lczw;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 67
    :try_start_2
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    const-class v3, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    invoke-virtual {v0, v2, v3}, Lcvo;->a(Lczw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 73
    :try_start_3
    invoke-virtual {v2}, Lczw;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 82
    :goto_0
    monitor-exit p0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 75
    :try_start_4
    invoke-virtual {v0}, Lczw;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 71
    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 75
    :try_start_5
    invoke-virtual {v2}, Lczw;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 77
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_0

    .line 75
    :try_start_6
    invoke-virtual {v1}, Lczw;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 77
    :cond_0
    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 61
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 73
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 71
    :catch_6
    move-exception v0

    goto :goto_2

    .line 69
    :catch_7
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getConfigFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->episodeId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".episode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpisodeDate()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->episodeDate:J

    return-wide v0
.end method

.method public getEpisodeId()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->episodeId:J

    return-wide v0
.end method

.method public getEpisodeNum()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->episodeNum:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFullConfigFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Ld;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getConfigFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;->providerName:Ljava/lang/String;

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;->videoType:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoType;->getVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->MOVIE:Lcom/wandoujia/p4/video/model/VideoType;

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Ld;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->config:Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;

    iget-boolean v0, v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo$LocalEpisodeConfig;->isPrivate:Z

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
