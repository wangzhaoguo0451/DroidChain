.class final Lept;
.super Lcom/wandoujia/net/HttpTransaction;
.source "FileDownloader.java"


# instance fields
.field a:Ljava/nio/channels/FileChannel;

.field private final k:Ljava/io/File;

.field private final l:Ljava/io/File;

.field private m:Leqq;


# direct methods
.method public constructor <init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;Ljava/io/File;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wandoujia/net/HttpTransaction;-><init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;)V

    .line 26
    iput-object p5, p0, Lept;->k:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lept;->l:Ljava/io/File;

    .line 28
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lept;->a:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    iget-object v0, p0, Lept;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lept;->a:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 32
    iget-object v0, p0, Lept;->d:Lepb;

    iget-object v0, v0, Lepb;->c:Leqp;

    iget-object v1, p0, Lept;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lept;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v2, v2, Lcom/wandoujia/net/AsyncHttpRequest;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leqp;->a(Ljava/lang/String;Ljava/lang/String;)Leqq;

    move-result-object v0

    iput-object v0, p0, Lept;->m:Leqq;

    .line 33
    iget-object v0, p0, Lept;->m:Leqq;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Leqq;

    invoke-direct {v0}, Leqq;-><init>()V

    iput-object v0, p0, Lept;->m:Leqq;

    .line 36
    iget-object v0, p0, Lept;->m:Leqq;

    iget-object v1, p0, Lept;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Leqq;->e:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lept;->m:Leqq;

    iget-object v1, p0, Lept;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v1, v1, Lcom/wandoujia/net/AsyncHttpRequest;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Leqq;->d:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lept;->m:Leqq;

    iget-object v1, p0, Lept;->d:Lepb;

    iget-object v1, v1, Lepb;->c:Leqp;

    iget-object v2, p0, Lept;->m:Leqq;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "received"

    iget-wide v6, v2, Leqq;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "content_length"

    iget-wide v6, v2, Leqq;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "url"

    iget-object v5, v2, Leqq;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "path"

    iget-object v2, v2, Leqq;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Leqp;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "infos"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, v0, Leqq;->a:J

    .line 41
    :cond_0
    iget-object v0, p0, Lept;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lept;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lept;->m:Leqq;

    iget-wide v2, v2, Leqq;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lept;->m:Leqq;

    iget-wide v0, v0, Leqq;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 43
    iget-object v0, p0, Lept;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    .line 44
    iget-object v0, p0, Lept;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, v0, Lcom/wandoujia/net/AsyncHttpRequest;->c:Lepv;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lept;->m:Leqq;

    iget-wide v4, v3, Leqq;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lepv;->a(Ljava/lang/String;Ljava/lang/String;)Lepv;

    .line 47
    :cond_1
    invoke-super {p0}, Lcom/wandoujia/net/HttpTransaction;->a()V

    .line 48
    return-void
.end method

.method protected final a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lept;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lept;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lept;->h:I

    .line 184
    iget-object v0, p0, Lept;->d:Lepb;

    iget v1, p0, Lept;->h:I

    rsub-int/lit8 v1, v1, 0x2

    mul-int/lit16 v1, v1, 0xbb8

    int-to-long v2, v1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v3, v1}, Lepb;->a(J[Ljava/lang/Object;)V

    .line 189
    :goto_0
    invoke-direct {p0}, Lept;->m()V

    .line 195
    :goto_1
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lept;->d:Lepb;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v1}, Lepb;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lept;->d:Lepb;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v1}, Lepb;->a(I[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lept;->m()V

    iget-object v0, p0, Lept;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 193
    iget-object v0, p0, Lept;->d:Lepb;

    iget-object v0, v0, Lepb;->c:Leqp;

    iget-object v1, p0, Lept;->m:Leqq;

    iget-wide v2, v1, Leqq;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Leqp;->a(Ljava/lang/Long;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/wandoujia/net/HttpTransaction;->b()V

    .line 53
    invoke-direct {p0}, Lept;->m()V

    .line 54
    return-void
.end method

.method protected final c()V
    .locals 10

    .prologue
    const-wide/32 v6, 0x100000

    .line 65
    invoke-super {p0}, Lcom/wandoujia/net/HttpTransaction;->c()V

    .line 67
    iget-object v0, p0, Lept;->m:Leqq;

    iget-wide v0, v0, Leqq;->b:J

    div-long/2addr v0, v6

    .line 68
    iget-object v2, p0, Lept;->m:Leqq;

    iget-object v3, p0, Lept;->b:Lepj;

    iget-wide v4, v3, Lepj;->f:J

    iput-wide v4, v2, Leqq;->b:J

    .line 69
    iget-object v2, p0, Lept;->m:Leqq;

    iget-wide v2, v2, Leqq;->b:J

    div-long/2addr v2, v6

    .line 70
    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lept;->d:Lepb;

    iget-object v0, v0, Lepb;->c:Leqp;

    iget-object v1, p0, Lept;->m:Leqq;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "received"

    iget-wide v4, v1, Leqq;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    iget-object v0, v0, Leqp;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "infos"

    const-string v4, "id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, v1, Leqq;->a:J

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lept;->h:I

    .line 75
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final d()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-super {p0}, Lcom/wandoujia/net/HttpTransaction;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return v2

    .line 83
    :cond_0
    iget-object v0, p0, Lept;->b:Lepj;

    iget v0, v0, Lepj;->d:I

    const/16 v3, 0xce

    if-ne v0, v3, :cond_2

    .line 86
    iget-object v0, p0, Lept;->b:Lepj;

    iget-object v0, v0, Lepj;->a:Lepv;

    const-string v3, "Content-Range"

    invoke-virtual {v0, v3}, Lepv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bytes (\\d+-\\d+|\\*)/\\d+$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 90
    iget-object v0, p0, Lept;->m:Leqq;

    iget-wide v6, v0, Leqq;->c:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    move v0, v1

    .line 92
    :goto_1
    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lept;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 94
    iget-object v0, p0, Lept;->f:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lept;->a(Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    goto :goto_1

    :cond_2
    move v2, v1

    .line 98
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected final e()V
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 103
    iget-object v0, p0, Lept;->b:Lepj;

    iget v0, v0, Lepj;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 121
    invoke-virtual {p0}, Lept;->j()V

    .line 144
    :goto_0
    return-void

    .line 106
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lept;->b:Lepj;

    invoke-virtual {v0}, Lepj;->b()J

    move-result-wide v0

    iget-object v4, p0, Lept;->l:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    iget-object v4, p0, Lept;->l:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lept;->l:Ljava/io/File;

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lept;->a:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iget-object v0, p0, Lept;->m:Leqq;

    iget-object v1, p0, Lept;->b:Lepj;

    invoke-virtual {v1}, Lepj;->b()J

    move-result-wide v4

    iput-wide v4, v0, Leqq;->c:J

    .line 111
    iget-object v0, p0, Lept;->d:Lepb;

    iget-object v0, v0, Lepb;->c:Leqp;

    iget-object v1, p0, Lept;->m:Leqq;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "content_length"

    iget-wide v6, v1, Leqq;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v0, Leqp;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "infos"

    const-string v6, "id = ?"

    new-array v7, v12, [Ljava/lang/String;

    new-instance v8, Ljava/lang/Long;

    iget-wide v10, v1, Leqq;->a:J

    invoke-direct {v8, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    :goto_1
    new-instance v1, Lepu;

    invoke-direct {v1, p0}, Lepu;-><init>(Lept;)V

    .line 131
    iget-object v0, p0, Lept;->b:Lepj;

    iget v0, v0, Lepj;->d:I

    const/16 v4, 0xce

    if-ne v0, v4, :cond_1

    .line 132
    new-instance v0, Leqm;

    iget-object v2, p0, Lept;->m:Leqq;

    iget-wide v2, v2, Leqq;->b:J

    iget-object v4, p0, Lept;->m:Leqq;

    iget-wide v4, v4, Leqq;->c:J

    invoke-direct/range {v0 .. v5}, Leqm;-><init>(Leqk;JJ)V

    iput-object v0, p0, Lept;->g:Leqj;

    .line 143
    :goto_2
    iget-object v0, p0, Lept;->d:Lepb;

    const/4 v1, 0x4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v9

    iget-object v3, p0, Lept;->m:Leqq;

    iget-wide v4, v3, Leqq;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    const/4 v3, 0x2

    iget-object v4, p0, Lept;->m:Leqq;

    iget-wide v4, v4, Leqq;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lepb;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    throw v1

    .line 115
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lept;->m:Leqq;

    iget-wide v0, v0, Leqq;->b:J

    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lept;->l:Ljava/io/File;

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lept;->a:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    throw v1

    .line 134
    :cond_1
    iget-object v0, p0, Lept;->b:Lepj;

    invoke-virtual {v0}, Lepj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Lcom/wandoujia/net/codec/ChunkDecoder;

    invoke-direct {v0, v1}, Lcom/wandoujia/net/codec/ChunkDecoder;-><init>(Leqk;)V

    iput-object v0, p0, Lept;->g:Leqj;

    goto :goto_2

    .line 136
    :cond_2
    iget-object v0, p0, Lept;->b:Lepj;

    invoke-virtual {v0}, Lepj;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 137
    new-instance v0, Leqm;

    iget-object v4, p0, Lept;->b:Lepj;

    invoke-virtual {v4}, Lepj;->b()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Leqm;-><init>(Leqk;JJ)V

    iput-object v0, p0, Lept;->g:Leqj;

    goto :goto_2

    .line 140
    :cond_3
    new-instance v0, Lcom/wandoujia/net/HttpException;

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->UNSUPPORT_TRANSFER_ENCODING:Lcom/wandoujia/net/HttpException$Type;

    const-string v2, "Identity NOT Support"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    throw v0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_1
    .end sparse-switch
.end method

.method protected final f()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 149
    :try_start_0
    iget-object v0, p0, Lept;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lept;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lept;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 160
    :goto_0
    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lept;->l:Ljava/io/File;

    iget-object v3, p0, Lept;->k:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 165
    :goto_1
    if-eqz v1, :cond_1

    .line 166
    iget-object v0, p0, Lept;->d:Lepb;

    const/4 v1, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lepb;->a(I[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lept;->d:Lepb;

    iget-object v0, v0, Lepb;->c:Leqp;

    iget-object v1, p0, Lept;->m:Leqq;

    iget-wide v2, v1, Leqq;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Leqp;->a(Ljava/lang/Long;)V

    .line 175
    :goto_2
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lept;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_2

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Delete failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lept;->k:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 169
    :cond_1
    if-nez v0, :cond_2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rename failed: From "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lept;->l:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lept;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_2
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lept;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected final g()Lcom/wandoujia/net/HttpTransaction;
    .locals 6

    .prologue
    .line 199
    new-instance v0, Lept;

    iget-object v1, p0, Lept;->d:Lepb;

    iget-wide v2, p0, Lept;->e:J

    iget-object v4, p0, Lept;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v5, p0, Lept;->k:Ljava/io/File;

    invoke-direct/range {v0 .. v5}, Lept;-><init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;Ljava/io/File;)V

    .line 200
    iget v1, p0, Lept;->h:I

    iput v1, v0, Lept;->h:I

    .line 201
    return-object v0
.end method
