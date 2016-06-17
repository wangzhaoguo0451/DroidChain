.class public final Lemt;
.super Ljava/lang/Object;
.source "DatabaseLogStorage.java"


# instance fields
.field a:Lemv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lemv;

    invoke-direct {v0, p1, p2}, Lemv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lemt;->a:Lemv;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)J
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lemt;->a:Lemv;

    iget-object v0, v0, Lemv;->a:Lems;

    invoke-virtual {v0}, Lems;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "log_data"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "log_content"

    aput-object v5, v2, v4

    const-string v7, "_id"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    const-wide/16 v0, -0x1

    .line 82
    :cond_0
    :goto_0
    return-wide v0

    .line 59
    :cond_1
    const-wide/16 v2, 0x0

    .line 61
    :try_start_0
    new-instance v1, Lcom/squareup/wire/Wire;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 62
    new-instance v5, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;

    invoke-direct {v5}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;-><init>()V

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-string v0, "log_content"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 68
    const-class v7, Lcom/wandoujia/logv3/model/packages/LogReportEvent;

    invoke-virtual {v1, v0, v7}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;

    .line 69
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v5, v6}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->event(Ljava/util/List;)Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;

    .line 74
    invoke-virtual {v5}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    if-eqz v4, :cond_4

    .line 79
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-wide v0, v2

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    move-wide v0, v2

    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_3

    .line 79
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lemt;->a:Lemv;

    invoke-virtual {v0, p1, p2}, Lemv;->a(J)Z

    .line 94
    return-void
.end method
