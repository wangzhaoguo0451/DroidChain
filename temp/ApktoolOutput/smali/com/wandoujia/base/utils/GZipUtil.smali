.class public Lcom/wandoujia/base/utils/GZipUtil;
.super Ljava/lang/Object;
.source "GZipUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zip(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 53
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 54
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 55
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :goto_1
    return-void

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static zipBytes([B)[B
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 43
    :goto_0
    return-object v0

    .line 22
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 24
    :try_start_2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 26
    const/16 v4, 0x400

    :try_start_3
    new-array v4, v4, [B

    .line 29
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v5

    .line 30
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 31
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 38
    :catch_0
    move-exception v4

    :goto_2
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 42
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 35
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 36
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .line 41
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 42
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 42
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    .line 41
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 38
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method
