.class public Lcom/wandoujia/rpc/http/cache/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/cache/DataCache;


# static fields
.field private static final CACHE_APP_VERSION:I = 0x1

.field private static final MAX_FILE_CACHE_SIZE:J = 0xa00000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cache:Lbsi;

.field private final cacheDirPath:Ljava/lang/String;

.field private final cacheLock:[B

.field private final gson:Lcvo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/rpc/http/cache/FileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/rpc/http/cache/FileCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cacheLock:[B

    .line 36
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->gson:Lcvo;

    .line 40
    iput-object p1, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cacheDirPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 201
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 202
    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    .line 203
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v2}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 207
    return-object v0
.end method

.method private static encodeImageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 191
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/rpc/http/cache/FileCache;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getCache()Lbsi;
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cacheLock:[B

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cacheDirPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Lbsi;->a(Ljava/io/File;)Lbsi;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;

    return-object v0

    .line 53
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cacheLock:[B

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;

    invoke-virtual {v0}, Lbsi;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;

    .line 178
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 172
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 175
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/cache/FileCache;->getCache()Lbsi;

    move-result-object v1

    .line 154
    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-static {p1}, Lcom/wandoujia/rpc/http/cache/FileCache;->encodeImageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsi;->a(Ljava/lang/String;)Lbso;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->cache:Lbsi;

    invoke-virtual {v0}, Lbsi;->close()V

    .line 71
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 72
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 88
    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/cache/FileCache;->getCache()Lbsi;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-static {p1}, Lcom/wandoujia/rpc/http/cache/FileCache;->encodeImageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsi;->a(Ljava/lang/String;)Lbso;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    :try_start_1
    new-instance v0, Lczw;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, v2, Lbso;->a:[Ljava/io/InputStream;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v3}, Lczw;-><init>(Ljava/io/Reader;)V

    .line 96
    iget-object v3, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->gson:Lcvo;

    const-class v4, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;

    invoke-virtual {v3, v0, v4}, Lcvo;->a(Lczw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 106
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2}, Lbso;->close()V

    .line 110
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v2, v1

    .line 106
    :cond_2
    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {v2}, Lbso;->close()V

    :cond_3
    :goto_1
    move-object v0, v1

    .line 110
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v0}, Lbso;->close()V

    goto :goto_1

    .line 103
    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {v2}, Lbso;->close()V

    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {v2}, Lbso;->close()V

    :cond_4
    throw v0

    .line 106
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 103
    :catch_2
    move-exception v0

    goto :goto_3

    .line 100
    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public put(Ljava/lang/String;Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/cache/FileCache;->getCache()Lbsi;

    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-static {p1}, Lcom/wandoujia/rpc/http/cache/FileCache;->encodeImageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsi;->b(Ljava/lang/String;)Lbsl;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 128
    new-instance v0, Lczy;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Lbsl;->a()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Lczy;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/wandoujia/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/wandoujia/rpc/http/cache/FileCache;->gson:Lcvo;

    const-class v3, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;

    invoke-virtual {v1, p2, v3, v0}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lczy;)V

    .line 131
    invoke-virtual {v0}, Lczy;->flush()V

    .line 132
    iget-boolean v1, v2, Lbsl;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, v2, Lbsl;->d:Lbsi;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lbsi;->a(Lbsi;Lbsl;Z)V

    iget-object v1, v2, Lbsl;->d:Lbsi;

    iget-object v2, v2, Lbsl;->a:Lbsn;

    iget-object v2, v2, Lbsn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbsi;->c(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/wandoujia/gson/JsonIOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 140
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0

    .line 132
    :cond_2
    :try_start_3
    iget-object v1, v2, Lbsl;->d:Lbsi;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lbsi;->a(Lbsi;Lbsl;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/wandoujia/gson/JsonIOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    .line 134
    :catch_1
    move-exception v1

    :goto_2
    if-eqz v0, :cond_0

    .line 142
    :try_start_4
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 144
    :catch_2
    move-exception v0

    goto :goto_0

    .line 137
    :catch_3
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_0

    .line 142
    :try_start_5
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 144
    :catch_4
    move-exception v0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    .line 142
    :try_start_6
    invoke-virtual {v1}, Lczy;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 144
    :cond_3
    :goto_5
    throw v0

    :catch_5
    move-exception v1

    goto :goto_5

    .line 140
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 137
    :catch_6
    move-exception v1

    goto :goto_3

    .line 134
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/cache/FileCache;->getCache()Lbsi;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/wandoujia/rpc/http/cache/FileCache;->encodeImageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsi;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/cache/FileCache;->getCache()Lbsi;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    const-wide/16 v0, 0x0

    .line 187
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lbsi;->a()J

    move-result-wide v0

    goto :goto_0
.end method
