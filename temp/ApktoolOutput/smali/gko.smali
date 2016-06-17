.class public final Lgko;
.super Ljava/lang/Object;
.source "LocalVideoDatabase.java"

# interfaces
.implements Lgkn;


# static fields
.field private static a:Lfzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lfzg;->a()Lfzg;

    move-result-object v0

    sput-object v0, Lgko;->a:Lfzg;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 160
    invoke-static {}, Lglw;->a()V

    .line 161
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 164
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_album"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "created_time desc"

    invoke-virtual/range {v0 .. v7}, Lfzg;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 167
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    invoke-static {v0}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->parse(Landroid/database/Cursor;)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-wide v2, v1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    invoke-static {v2, v3}, Lgko;->b(J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->setEpisodeModelList(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_1
    :goto_2
    return-object v9

    .line 177
    :cond_2
    if-eqz v0, :cond_1

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 177
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    .line 178
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 177
    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    .line 175
    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_1
.end method

.method public static a(J)V
    .locals 6
    .parameter

    .prologue
    .line 271
    invoke-static {}, Lglw;->a()V

    .line 273
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_album"

    const-string v2, "video_id"

    invoke-static {v2}, Lgdi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lfzg;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_episode"

    const-string v2, "video_id"

    invoke-static {v2}, Lgdi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lfzg;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 88
    invoke-static {}, Lglw;->a()V

    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 90
    const-string v1, "is_read"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "played_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    sget-object v1, Lgko;->a:Lfzg;

    const-string v2, "local_video_album"

    const-string v3, "video_id"

    invoke-static {v3}, Lgdi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v0, v3, v4}, Lfzg;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    sget-object v1, Lgko;->a:Lfzg;

    const-string v2, "local_video_episode"

    const-string v3, "video_id"

    invoke-static {v3}, Lgdi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v0, v3, v4}, Lfzg;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public static a(JJJ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lglw;->a()V

    .line 51
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    const-string v1, "is_read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "played_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    sget-object v1, Lgko;->a:Lfzg;

    const-string v2, "local_video_episode"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "episode_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "video_id"

    aput-object v5, v3, v4

    invoke-static {v3}, Lgdi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lfzg;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(JJLcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {}, Lglw;->a()V

    .line 39
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_episode"

    invoke-virtual {p4}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "episode_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "video_id"

    aput-object v5, v3, v4

    invoke-static {v3}, Lgdi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lfzg;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(JLcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {}, Lglw;->a()V

    .line 26
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_album"

    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "video_id"

    invoke-static {v3}, Lgdi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lfzg;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 4
    .parameter

    .prologue
    .line 101
    invoke-static {}, Lglw;->a()V

    .line 102
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_album"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lfzg;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 108
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getEpisodeModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 110
    invoke-static {v0}, Lglw;->a(Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-static {v0}, Lgko;->a(Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    invoke-static {}, Lglw;->a()V

    .line 121
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->videoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_episode"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lfzg;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(J)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 231
    invoke-static {}, Lglw;->a()V

    .line 232
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 235
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_episode"

    const/4 v2, 0x0

    const-string v3, "video_id"

    invoke-static {v3}, Lgdi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "episode_num desc, episode_date desc "

    invoke-virtual/range {v0 .. v7}, Lfzg;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 240
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-static {v0}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->parse(Landroid/database/Cursor;)Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_0
    :goto_2
    return-object v9

    .line 246
    :cond_1
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 246
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_2

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 246
    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    .line 244
    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_1
.end method

.method public static b(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-static {}, Lglw;->a()V

    .line 285
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_episode"

    const-string v2, "episode_id"

    invoke-static {v2}, Lgdi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lfzg;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 287
    invoke-static {p0, p1}, Lgko;->c(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-static {p0, p1}, Lgko;->a(J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(J)Z
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 314
    invoke-static {}, Lglw;->a()V

    .line 317
    :try_start_0
    sget-object v0, Lgko;->a:Lfzg;

    const-string v1, "local_video_episode"

    const/4 v2, 0x0

    const-string v3, "video_id"

    invoke-static {v3}, Lgdi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lfzg;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 321
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_1

    move v0, v8

    .line 325
    :goto_0
    if-eqz v1, :cond_0

    .line 326
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v9

    .line 321
    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    move-object v0, v10

    :goto_2
    if-eqz v0, :cond_2

    .line 326
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    .line 329
    goto :goto_1

    .line 325
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_3

    .line 326
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 325
    :catchall_1
    move-exception v0

    move-object v10, v1

    goto :goto_3

    .line 323
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method
