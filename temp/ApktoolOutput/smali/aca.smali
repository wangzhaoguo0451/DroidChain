.class public final Laca;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field private static b:Labz;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Laca;->b:Labz;

    .line 27
    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Laca;->c:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Laca;->a:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 290
    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    .line 293
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 294
    mul-int/lit8 v1, v1, 0x1f

    aget-char v3, v2, v0

    add-int/2addr v1, v3

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 297
    :cond_1
    return v1
.end method

.method public static a(Labz;)J
    .locals 6
    .parameter

    .prologue
    .line 35
    if-eqz p0, :cond_0

    .line 36
    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Labz;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Labz;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Labz;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Labz;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Labz;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ld;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 42
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    .line 44
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    .line 48
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Labz;
    .locals 10
    .parameter

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-static {p0}, Ld;->e(Landroid/content/Context;)Labu;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    const-string v1, "EI"

    invoke-virtual {v0, v1}, Labu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "SI"

    invoke-virtual {v0, v2}, Labu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v3, "UTDID"

    invoke-virtual {v0, v3}, Labu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v4, "DID"

    invoke-virtual {v0, v4}, Labu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    const-string v5, "timestamp"

    invoke-virtual {v0, v5}, Labu;->b(Ljava/lang/String;)J

    move-result-wide v6

    .line 96
    const-string v5, "S"

    invoke-virtual {v0, v5}, Labu;->b(Ljava/lang/String;)J

    move-result-wide v8

    .line 97
    invoke-static {v1}, Ld;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ld;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Ld;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Ld;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Labz;

    invoke-direct {v0}, Labz;-><init>()V

    .line 101
    iput-object v4, v0, Labz;->c:Ljava/lang/String;

    .line 102
    iput-object v1, v0, Labz;->a:Ljava/lang/String;

    .line 103
    iput-object v2, v0, Labz;->b:Ljava/lang/String;

    .line 104
    iput-object v3, v0, Labz;->d:Ljava/lang/String;

    .line 105
    iput-wide v6, v0, Labz;->e:J

    .line 106
    iput-wide v8, v0, Labz;->f:J

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Labz;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-wide v0, p0, Labz;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 77
    invoke-static {p1}, Laca;->a(Landroid/content/Context;)Labz;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    invoke-static {p0, p1}, Laca;->b(Labz;Landroid/content/Context;)V

    .line 83
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-static {p1}, Labr;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 228
    new-instance v1, Lacb;

    invoke-direct {v1}, Lacb;-><init>()V

    .line 229
    invoke-static {v0}, Labr;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lacb;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Ld;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Labz;
    .locals 2
    .parameter

    .prologue
    .line 235
    const-class v1, Laca;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laca;->b:Labz;

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Ld;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {p0}, Laca;->a(Landroid/content/Context;)Labz;

    .line 240
    :cond_0
    sget-object v0, Laca;->b:Labz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_0
    monitor-exit v1

    return-object v0

    .line 242
    :cond_1
    if-eqz p0, :cond_2

    .line 243
    :try_start_1
    invoke-static {p0}, Laca;->d(Landroid/content/Context;)Labz;

    move-result-object v0

    .line 244
    sput-object v0, Laca;->b:Labz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 247
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Labz;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 117
    invoke-static {p1}, Ld;->e(Landroid/content/Context;)Labu;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    iget-object v1, p0, Labz;->a:Ljava/lang/String;

    invoke-static {v1}, Ld;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Labz;->b:Ljava/lang/String;

    invoke-static {v1}, Ld;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Labz;->d:Ljava/lang/String;

    invoke-static {v1}, Ld;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Labz;->c:Ljava/lang/String;

    invoke-static {v1}, Ld;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 124
    invoke-virtual {v0}, Labu;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, v0, Labu;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    iget-object v1, v0, Labu;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v1, v0, Labu;->a:Landroid/content/SharedPreferences$Editor;

    const-string v4, "t"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v1, v0, Labu;->b:Lcom/alipay/ut/b/b$a;

    if-eqz v1, :cond_1

    iget-object v1, v0, Labu;->b:Lcom/alipay/ut/b/b$a;

    invoke-interface {v1}, Lcom/alipay/ut/b/b$a;->n()Lcom/alipay/ut/b/b$a;

    iget-object v1, v0, Labu;->b:Lcom/alipay/ut/b/b$a;

    const-string v4, "t"

    invoke-interface {v1, v4, v2, v3}, Lcom/alipay/ut/b/b$a;->a(Ljava/lang/String;J)Lcom/alipay/ut/b/b$a;

    .line 125
    :cond_1
    const-string v1, "EI"

    iget-object v2, p0, Labz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "SI"

    iget-object v2, p0, Labz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "UTDID"

    iget-object v2, p0, Labz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "DID"

    iget-object v2, p0, Labz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "S"

    invoke-static {p0}, Laca;->a(Labz;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Labu;->a(Ljava/lang/String;J)V

    .line 130
    iget-wide v2, p0, Labz;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 131
    const-string v1, "timestamp"

    iget-wide v2, p0, Labz;->e:J

    invoke-virtual {v0, v1, v2, v3}, Labu;->a(Ljava/lang/String;J)V

    .line 133
    :cond_2
    invoke-virtual {v0}, Labu;->b()Z

    .line 137
    :cond_3
    return-void
.end method

.method private static c(Landroid/content/Context;)Labz;
    .locals 12
    .parameter

    .prologue
    .line 53
    new-instance v1, Labz;

    invoke-direct {v1}, Labz;-><init>()V

    .line 54
    if-eqz p0, :cond_1

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    invoke-static {p0}, Laby;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {p0}, Laby;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 59
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v0, v8

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v0}, Ld;->a(I)[B

    move-result-object v0

    invoke-static {v7}, Ld;->a(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v6, v0, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Laby;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Laca;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ld;->a(I)[B

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v7, Laca;->c:Ljava/lang/String;

    const-string v8, "HmacSHA1"

    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v8}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v8, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Labr;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laca;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ld;->a(I)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Labr;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 61
    iput-object v4, v1, Labz;->c:Ljava/lang/String;

    .line 62
    iput-object v4, v1, Labz;->a:Ljava/lang/String;

    .line 63
    iput-wide v2, v1, Labz;->e:J

    .line 64
    iput-object v5, v1, Labz;->b:Ljava/lang/String;

    .line 65
    iput-object v0, v1, Labz;->d:Ljava/lang/String;

    .line 66
    invoke-static {v1}, Laca;->a(Labz;)J

    move-result-wide v2

    iput-wide v2, v1, Labz;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Labz;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 140
    if-eqz p0, :cond_b

    .line 141
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Ld;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 147
    new-instance v3, Lacb;

    invoke-direct {v3}, Lacb;-><init>()V

    .line 149
    iget-object v3, v3, Lacb;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Ld;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    :goto_0
    invoke-static {v0}, Ld;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    invoke-static {p0}, Laca;->a(Landroid/content/Context;)Labz;

    move-result-object v3

    .line 153
    if-nez v3, :cond_0

    .line 155
    invoke-static {p0}, Laca;->c(Landroid/content/Context;)Labz;

    move-result-object v3

    .line 156
    iput-object v0, v3, Labz;->d:Ljava/lang/String;

    .line 160
    invoke-static {v3, p0}, Laca;->b(Labz;Landroid/content/Context;)V

    :cond_0
    move-object v0, v3

    .line 163
    if-eqz v0, :cond_2

    .line 223
    :goto_1
    return-object v0

    .line 149
    :cond_1
    invoke-static {}, Lacb;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 171
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_3

    .line 172
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 175
    :cond_3
    invoke-static {p0}, Laca;->a(Landroid/content/Context;)Labz;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_6

    .line 177
    iget-wide v4, v1, Labz;->f:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    iget-wide v4, v1, Labz;->f:J

    invoke-static {v1}, Laca;->a(Labz;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    .line 179
    if-eqz v0, :cond_4

    .line 180
    iget-object v0, v1, Labz;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Laca;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    .line 182
    goto :goto_1

    :cond_5
    move v0, v2

    .line 168
    goto :goto_2

    .line 186
    :cond_6
    invoke-static {}, Lcom/alipay/ut/device/BFoundIt;->a()Labz;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 187
    invoke-static {}, Lcom/alipay/ut/device/BFoundIt;->a()Labz;

    move-result-object v1

    .line 188
    invoke-static {v1, p0}, Laca;->b(Labz;Landroid/content/Context;)V

    .line 189
    if-eqz v0, :cond_7

    .line 190
    iget-object v0, v1, Labz;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Laca;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    move-object v0, v1

    .line 192
    goto :goto_1

    .line 194
    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 195
    const-string v3, "src"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v3, "UT.QueryWhoHasOne"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v3, "com.alipay.ut.permission.DEVICE_STATE"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 199
    invoke-static {v1}, Lcom/alipay/ut/device/BFoundIt;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 201
    const-wide/16 v2, 0x9c4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_3
    invoke-static {}, Lcom/alipay/ut/device/BFoundIt;->a()Labz;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 206
    invoke-static {}, Lcom/alipay/ut/device/BFoundIt;->a()Labz;

    move-result-object v1

    .line 207
    invoke-static {v1, p0}, Laca;->b(Labz;Landroid/content/Context;)V

    .line 208
    if-eqz v0, :cond_9

    .line 209
    iget-object v0, v1, Labz;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Laca;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    move-object v0, v1

    .line 211
    goto/16 :goto_1

    .line 213
    :cond_a
    sget-object v1, Laca;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_1
    invoke-static {p0}, Laca;->c(Landroid/content/Context;)Labz;

    move-result-object v0

    .line 215
    invoke-static {v0, p0}, Laca;->b(Labz;Landroid/content/Context;)V

    .line 217
    iget-object v2, v0, Labz;->d:Ljava/lang/String;

    invoke-static {p0, v2}, Laca;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    monitor-exit v1

    goto/16 :goto_1

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 223
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_3
.end method
