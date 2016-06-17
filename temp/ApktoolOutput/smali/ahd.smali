.class public Lahd;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lagh;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lahe;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/io/File;

.field private c:J

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    const/high16 v0, 0x50

    invoke-direct {p0, p1, v0}, Lahd;-><init>(Ljava/io/File;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lahd;->a:Ljava/util/Map;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lahd;->c:J

    .line 73
    iput-object p1, p0, Lahd;->b:Ljava/io/File;

    .line 74
    iput p2, p0, Lahd;->d:I

    .line 75
    return-void
.end method

.method public static a(Ljava/io/InputStream;I)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 321
    new-array v1, p1, [B

    .line 323
    const/4 v0, 0x0

    .line 324
    :goto_0
    if-ge v0, p1, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 325
    add-int/2addr v0, v2

    goto :goto_0

    .line 327
    :cond_0
    if-eq v0, p1, :cond_1

    .line 328
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_1
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 238
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lagi;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lahd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    if-nez v0, :cond_0

    move-object v0, v1

    .line 133
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lahd;->d(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 116
    :try_start_2
    new-instance v2, Lahf;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Lahf;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 117
    :try_start_3
    invoke-static {v2}, Lahe;->a(Ljava/io/InputStream;)Lahe;

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, v2, Lahf;->a:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v4}, Lahd;->a(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 119
    invoke-virtual {v0, v4}, Lahe;->a([B)Lagi;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    .line 129
    :try_start_4
    invoke-virtual {v2}, Lahf;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 121
    :goto_1
    :try_start_5
    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, p1}, Lahd;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 123
    if-eqz v2, :cond_1

    .line 131
    :try_start_6
    invoke-virtual {v2}, Lahf;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1
    move-object v0, v1

    .line 133
    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 124
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 125
    :goto_2
    :try_start_7
    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0, p1}, Lahd;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 127
    if-eqz v2, :cond_2

    .line 131
    :try_start_8
    invoke-virtual {v2}, Lahf;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_2
    move-object v0, v1

    .line 133
    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    .line 131
    :try_start_9
    invoke-virtual {v2}, Lahf;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 133
    :cond_3
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 107
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :catch_5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 129
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 124
    :catch_6
    move-exception v0

    goto :goto_2

    .line 120
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized a()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lahd;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v0, p0, Lahd;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lahd;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lagx;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    .line 152
    :cond_1
    :try_start_1
    iget-object v1, p0, Lahd;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 153
    if-eqz v3, :cond_0

    .line 156
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    const/4 v1, 0x0

    .line 159
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :try_start_3
    invoke-static {v0}, Lahe;->a(Ljava/io/InputStream;)Lahe;

    move-result-object v1

    .line 161
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lahe;->a:J

    .line 162
    iget-object v6, v1, Lahe;->b:Ljava/lang/String;

    invoke-virtual {p0, v6, v1}, Lahd;->a(Ljava/lang/String;Lahe;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 169
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 156
    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v5, :cond_3

    .line 165
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 169
    :cond_3
    if-eqz v0, :cond_2

    .line 170
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    :goto_3
    if-eqz v1, :cond_4

    .line 170
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 172
    :cond_4
    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 145
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 168
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    .line 164
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public final a(I)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 255
    iget-wide v0, p0, Lahd;->c:J

    int-to-long v4, p1

    add-long/2addr v0, v4

    iget v3, p0, Lahd;->d:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    sget-boolean v0, Lagx;->a:Z

    if-eqz v0, :cond_2

    .line 259
    const-string v0, "Pruning old cache entries."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lagx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_2
    iget-wide v4, p0, Lahd;->c:J

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 266
    iget-object v0, p0, Lahd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    .line 267
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahe;

    .line 270
    iget-object v8, v0, Lahe;->b:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lahd;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 271
    if-eqz v8, :cond_3

    .line 272
    iget-wide v8, p0, Lahd;->c:J

    iget-wide v10, v0, Lahe;->a:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lahd;->c:J

    .line 277
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 278
    add-int/lit8 v0, v1, 0x1

    .line 280
    iget-wide v8, p0, Lahd;->c:J

    int-to-long v10, p1

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lahd;->d:I

    int-to-float v8, v8

    const v9, 0x3f666666

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-gez v1, :cond_4

    .line 281
    :goto_3
    sget-boolean v1, Lagx;->a:Z

    if-eqz v1, :cond_0

    .line 286
    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    iget-wide v8, p0, Lahd;->c:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v13

    invoke-static {v1, v3}, Lagx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    :cond_3
    const-string v8, "Could not delete cache entry for key=%s, filename=%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, v0, Lahe;->b:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v0, v0, Lahe;->b:Ljava/lang/String;

    invoke-static {v0}, Lahd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public declared-synchronized a(Ljava/lang/String;Lagi;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lagi;->a:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lahd;->a(I)V

    .line 201
    invoke-virtual {p0, p1}, Lahd;->d(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 203
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 204
    new-instance v2, Lahe;

    invoke-direct {v2, p1, p2}, Lahe;-><init>(Ljava/lang/String;Lagi;)V

    .line 205
    invoke-virtual {v2, v1}, Lahe;->a(Ljava/io/OutputStream;)Z

    .line 206
    iget-object v3, p2, Lagi;->a:[B

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 207
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 208
    invoke-virtual {p0, p1, v2}, Lahd;->a(Ljava/lang/String;Lahe;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 213
    if-nez v1, :cond_0

    .line 214
    const-string v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lahe;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lahd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-wide v0, p0, Lahd;->c:J

    iget-wide v2, p2, Lahe;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lahd;->c:J

    .line 303
    :goto_0
    iget-object v0, p0, Lahd;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lahd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahe;

    .line 301
    iget-wide v2, p0, Lahd;->c:J

    iget-wide v4, p2, Lahe;->a:J

    iget-wide v0, v0, Lahe;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lahd;->c:J

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lahd;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 224
    iget-object v0, p0, Lahd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahe;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lahd;->c:J

    iget-wide v4, v0, Lahe;->a:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lahd;->c:J

    iget-object v0, p0, Lahd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    if-nez v1, :cond_1

    .line 226
    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lahd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_1
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 247
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lahd;->b:Ljava/io/File;

    invoke-static {p1}, Lahd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
