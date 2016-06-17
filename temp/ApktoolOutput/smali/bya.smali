.class public final Lbya;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    new-array v0, v1, [B

    sput-object v0, Lbya;->a:[B

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lbya;->b:[Ljava/lang/String;

    .line 49
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lbya;->c:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-static {p0}, Lbya;->a(Ljava/lang/String;)I

    move-result p1

    goto :goto_0
.end method

.method public static a(Ljava/net/URI;)I
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lbya;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/net/URL;)I
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lbya;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Lbyb;

    invoke-direct {v0, p0, p1}, Lbyb;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Lokio/ByteString;)Lokio/ByteString;
    .locals 2
    .parameter

    .prologue
    .line 216
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 218
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(JJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    or-long v0, v2, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, v2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, v2

    cmp-long v0, v0, p2

    if-gez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 76
    :cond_1
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    return-void

    .line 141
    :catch_0
    move-exception v1

    .line 142
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 145
    :cond_1
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 146
    :cond_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 147
    :cond_3
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 148
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 136
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lhth;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 170
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v0

    iget-boolean v0, v0, Lhti;->b:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v0

    invoke-virtual {v0}, Lhti;->f()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 173
    :goto_0
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v5

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Lhti;->a(J)Lhti;

    .line 175
    :try_start_0
    new-instance v5, Lhsp;

    invoke-direct {v5}, Lhsp;-><init>()V

    .line 176
    :goto_1
    const-wide/16 v8, 0x800

    invoke-interface {p0, v5, v8, v9}, Lhth;->a(Lhsp;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 177
    invoke-virtual {v5}, Lhsp;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 181
    :catch_0
    move-exception v5

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 184
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v0

    iput-boolean v4, v0, Lhti;->b:Z

    :goto_2
    move v0, v4

    .line 186
    :goto_3
    return v0

    :cond_0
    move-wide v0, v2

    .line 171
    goto :goto_0

    .line 179
    :cond_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 184
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v0

    iput-boolean v4, v0, Lhti;->b:Z

    .line 186
    :goto_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lhti;->a(J)Lhti;

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lhti;->a(J)Lhti;

    goto :goto_2

    .line 183
    :catchall_0
    move-exception v5

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 184
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v0

    iput-boolean v4, v0, Lhti;->b:Z

    .line 186
    :goto_5
    throw v5

    :cond_4
    invoke-interface {p0}, Lhth;->a()Lhti;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lhti;->a(J)Lhti;

    goto :goto_5
.end method

.method public static a(Lhth;Ljava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0, p1}, Lbya;->a(Lhth;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 160
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 255
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p1, v2

    array-length v6, p2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, p2, v0

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
