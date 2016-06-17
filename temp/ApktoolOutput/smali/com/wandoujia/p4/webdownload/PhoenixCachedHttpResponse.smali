.class public final Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;
.super Ljava/lang/Object;
.source "PhoenixCachedHttpResponse.java"


# instance fields
.field public final a:Lhud;

.field public final b:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

.field c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;


# direct methods
.method public constructor <init>(Lhud;Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a:Lhud;

    .line 46
    iput-object p2, p0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->b:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Lhud;Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a:Lhud;

    .line 52
    iget-object v0, p2, Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;->futureListenerName:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;->valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->b:Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;

    .line 54
    iput-object p2, p0, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->c:Lcom/wandoujia/p4/webdownload/cache/WebDownloadDatabaseHelper$ResourceColumns;

    .line 55
    return-void
.end method

.method public static a(Ljava/io/File;)Lhud;
    .locals 4
    .parameter

    .prologue
    .line 114
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    :cond_0
    const-string v1, "PhoenixCachedHttpResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "get cache from "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but file not exists"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_1
    return-object v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse;->a(Ljava/io/File;JJ)Lhud;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;JJ)Lhud;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 123
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    add-long v0, p1, p3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 125
    :cond_0
    const-string v1, "PhoenixCachedHttpResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "get cache from "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but file not exists"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v7

    .line 150
    :goto_1
    return-object v0

    .line 125
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "PhoenixCachedHttpResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get cache from path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :try_start_1
    invoke-static {}, Lhus;->a()Lhud;

    move-result-object v6

    .line 138
    new-instance v1, Lhur;

    invoke-direct {v1, v6}, Lhur;-><init>(Lhud;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-wide v2, p1

    move-wide v4, p3

    .line 139
    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/wandoujia/base/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 141
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v0, v6

    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    .line 143
    :goto_2
    :try_start_3
    const-string v3, "PhoenixCachedHttpResponse"

    const-string v4, "get from cache file error: "

    invoke-static {v3, v4, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 147
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    :goto_3
    move-object v0, v7

    .line 150
    goto :goto_1

    .line 144
    :catch_1
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    .line 145
    :goto_4
    :try_start_4
    const-string v3, "PhoenixCachedHttpResponse"

    const-string v4, "get from cache io error: "

    invoke-static {v3, v4, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 147
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_3

    .line 147
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_5
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    .line 147
    :catchall_1
    move-exception v1

    move-object v2, v7

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 144
    :catch_2
    move-exception v1

    move-object v2, v7

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 142
    :catch_4
    move-exception v1

    move-object v2, v7

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/String;)Lhud;
    .locals 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lgui;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lhud;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 156
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    :cond_0
    const-string v3, "PhoenixCachedHttpResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "get cache from "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", but file not exists"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v8

    .line 206
    :goto_1
    return-object v2

    .line 157
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 161
    :cond_2
    const-string v2, "PhoenixCachedHttpResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get cache from path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgui;

    .line 165
    iget-wide v4, v2, Lgui;->b:J

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    move-object v2, v8

    .line 166
    goto :goto_1

    .line 172
    :cond_4
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    invoke-static {}, Lhus;->a()Lhud;

    move-result-object v9

    .line 175
    new-instance v3, Lhur;

    invoke-direct {v3, v9}, Lhur;-><init>(Lhud;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 176
    :try_start_2
    const-string v4, "\r\n"

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 177
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 178
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lgui;

    move-object v6, v0

    .line 179
    const-string v4, "Content-Type: audio/mpeg"

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Content-Range: bytes "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v6, Lgui;->a:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v6, Lgui;->b:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v6, Lgui;->c:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "--"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "ASCII"

    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V

    .line 185
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 186
    const-string v7, "ASCII"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 187
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 188
    const-string v4, "ASCII"

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 189
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 190
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 191
    iget-wide v4, v6, Lgui;->a:J

    invoke-virtual {v6}, Lgui;->a()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/wandoujia/base/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J

    .line 192
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 197
    :catch_0
    move-exception v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v14

    .line 198
    :goto_3
    :try_start_3
    const-string v5, "PhoenixCachedHttpResponse"

    const-string v6, "get from cache file error: "

    invoke-static {v5, v6, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 202
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    :goto_4
    move-object v2, v8

    .line 206
    goto/16 :goto_1

    .line 194
    :cond_5
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 195
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 202
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v2, v9

    goto/16 :goto_1

    .line 199
    :catch_1
    move-exception v2

    move-object v3, v8

    move-object v4, v8

    .line 200
    :goto_5
    :try_start_5
    const-string v5, "PhoenixCachedHttpResponse"

    const-string v6, "get from cache io error: "

    invoke-static {v5, v6, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 202
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_4

    .line 202
    :catchall_0
    move-exception v2

    move-object v3, v8

    move-object v4, v8

    :goto_6
    invoke-static {v4}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v2

    .line 202
    :catchall_1
    move-exception v3

    move-object v4, v8

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto :goto_6

    :catchall_2
    move-exception v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_6

    :catchall_3
    move-exception v2

    goto :goto_6

    .line 199
    :catch_2
    move-exception v3

    move-object v4, v8

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_5

    .line 197
    :catch_4
    move-exception v2

    move-object v3, v8

    move-object v4, v8

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v4, v8

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto :goto_3
.end method

.method public static a(Lhud;Ljava/io/File;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return v0

    .line 83
    :cond_0
    const-string v1, "PhoenixCachedHttpResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "put cache into file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_2
    const/4 v3, 0x0

    .line 98
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    new-instance v2, Lhuq;

    invoke-direct {v2, p0}, Lhuq;-><init>(Lhud;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    :try_start_2
    invoke-static {v2, v1}, Lcom/wandoujia/base/utils/IOUtils;->write(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 102
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    const-string v2, "PhoenixCachedHttpResponse"

    const-string v3, "put cache make file error: "

    invoke-static {v2, v3, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 104
    :goto_1
    :try_start_3
    const-string v3, "PhoenixCachedHttpResponse"

    const-string v4, "put cache file error: "

    invoke-static {v3, v4, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 105
    :catch_2
    move-exception v1

    .line 106
    :goto_2
    :try_start_4
    const-string v2, "PhoenixCachedHttpResponse"

    const-string v4, "put cache io error: "

    invoke-static {v2, v4, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v3}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 105
    :catch_3
    move-exception v1

    move-object v3, v2

    goto :goto_2

    .line 103
    :catch_4
    move-exception v1

    goto :goto_1
.end method
