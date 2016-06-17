.class public Lcom/wandoujia/base/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field private static MD5:Ljava/lang/String; = null

.field private static final MIN_SEGMENT_FILE_LENGTH:J = 0x60000L

.field private static final STREAM_BUFFER_LENGTH:I = 0x20000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "MD5"

    sput-object v0, Lcom/wandoujia/base/utils/MD5Utils;->MD5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFileSegmentMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/32 v8, 0x20000

    const/4 v0, 0x0

    .line 70
    .line 72
    const/high16 v1, 0x2

    :try_start_0
    new-array v2, v1, [B

    .line 73
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    sget-object v3, Lcom/wandoujia/base/utils/MD5Utils;->MD5:Ljava/lang/String;

    invoke-static {v3}, Lcom/wandoujia/base/utils/MD5Utils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 75
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    const/4 v4, 0x0

    const/high16 v5, 0x2

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 79
    if-ltz v4, :cond_0

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 83
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v8

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 84
    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    const/4 v4, 0x0

    const/high16 v5, 0x2

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 86
    if-ltz v4, :cond_1

    .line 87
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v8

    long-to-int v4, v4

    .line 91
    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 92
    const/4 v4, 0x0

    const/high16 v5, 0x2

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 93
    if-ltz v4, :cond_2

    .line 94
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 97
    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 98
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 99
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/base/utils/MD5Utils;->getHexString([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 105
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 107
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_2
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_3
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 103
    :catch_2
    move-exception v2

    goto :goto_2

    .line 101
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public static checkMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 133
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 138
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 139
    :try_start_2
    invoke-static {v1}, Lcom/wandoujia/base/utils/MD5Utils;->md5Digest(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 144
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 164
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 171
    :goto_1
    const/4 v0, 0x1

    .line 175
    :cond_1
    :goto_2
    return v0

    .line 146
    :cond_2
    if-eqz p2, :cond_3

    .line 147
    :try_start_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    const-string v2, "empty"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 153
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 164
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    .line 150
    :cond_4
    :try_start_8
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    goto :goto_3

    .line 156
    :catch_1
    move-exception v2

    move-object v2, v3

    :goto_5
    if-eqz v1, :cond_5

    .line 162
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 164
    :cond_5
    :goto_6
    if-eqz v2, :cond_1

    .line 169
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 171
    :catch_2
    move-exception v1

    goto :goto_2

    .line 158
    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    :goto_7
    if-eqz v1, :cond_6

    .line 162
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 164
    :cond_6
    :goto_8
    if-eqz v3, :cond_1

    .line 169
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_2

    .line 171
    :catch_4
    move-exception v1

    goto :goto_2

    .line 160
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_9
    if-eqz v1, :cond_7

    .line 162
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 164
    :cond_7
    :goto_a
    if-eqz v3, :cond_8

    .line 169
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 171
    :cond_8
    :goto_b
    throw v0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto :goto_b

    .line 160
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 158
    :catch_c
    move-exception v1

    move-object v1, v2

    goto :goto_7

    :catch_d
    move-exception v2

    goto :goto_7

    .line 156
    :catch_e
    move-exception v1

    move-object v1, v2

    goto :goto_5

    :catch_f
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_5
.end method

.method static getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .parameter

    .prologue
    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 128
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 129
    const-string v1, "%032x"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Digest(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x2

    const/4 v3, 0x0

    .line 39
    sget-object v0, Lcom/wandoujia/base/utils/MD5Utils;->MD5:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/MD5Utils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 40
    new-array v2, v4, [B

    .line 41
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 43
    :goto_0
    if-ltz v0, :cond_0

    .line 44
    invoke-virtual {v1, v2, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 45
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/MD5Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Digest(Ljava/io/InputStream;[B)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    sget-object v0, Lcom/wandoujia/base/utils/MD5Utils;->MD5:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/MD5Utils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 53
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 54
    :goto_0
    if-ltz v0, :cond_0

    .line 55
    invoke-virtual {v1, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 56
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/MD5Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    sget-object v0, Lcom/wandoujia/base/utils/MD5Utils;->MD5:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/MD5Utils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 124
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/MD5Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
