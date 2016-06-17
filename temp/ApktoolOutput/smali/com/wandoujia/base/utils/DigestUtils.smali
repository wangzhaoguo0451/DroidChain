.class public Lcom/wandoujia/base/utils/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static hasMd5:Z

.field private static hexDigits:[C

.field private static messageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wandoujia/base/utils/DigestUtils;->hasMd5:Z

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/base/utils/DigestUtils;->messageDigest:Ljava/security/MessageDigest;

    .line 20
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/base/utils/DigestUtils;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wandoujia/base/utils/DigestUtils;->HEX_BYTES:[B

    .line 117
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/wandoujia/base/utils/DigestUtils;->hexDigits:[C

    return-void

    .line 22
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/base/utils/DigestUtils;->hasMd5:Z

    goto :goto_0

    .line 23
    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data

    .line 117
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Lcom/wandoujia/base/utils/DigestUtils;->hexDigits:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 144
    sget-object v1, Lcom/wandoujia/base/utils/DigestUtils;->hexDigits:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/wandoujia/base/utils/DigestUtils;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 135
    add-int v1, p1, p2

    .line 136
    :goto_0
    if-ge p1, v1, :cond_0

    .line 137
    aget-byte v2, p0, p1

    invoke-static {v2, v0}, Lcom/wandoujia/base/utils/DigestUtils;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 136
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized computeMd5forPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    const-class v2, Lcom/wandoujia/base/utils/DigestUtils;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 40
    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit v2

    return-object v0

    .line 43
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 53
    array-length v1, v3

    new-array v4, v1, [B

    move v1, v0

    .line 55
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 56
    aget-char v5, v3, v1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_1
    sget-object v1, Lcom/wandoujia/base/utils/DigestUtils;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 61
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 64
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    .line 65
    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    .line 66
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized computeMd5forPkg([B)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    const-class v2, Lcom/wandoujia/base/utils/DigestUtils;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 114
    :goto_0
    monitor-exit v2

    return-object v0

    .line 95
    :cond_0
    :try_start_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    move v1, v0

    .line 96
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 97
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 98
    mul-int/lit8 v5, v1, 0x2

    sget-object v6, Lcom/wandoujia/base/utils/DigestUtils;->HEX_BYTES:[B

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    .line 99
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    .line 100
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/wandoujia/base/utils/DigestUtils;->HEX_BYTES:[B

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_1
    sget-object v1, Lcom/wandoujia/base/utils/DigestUtils;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 105
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 108
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    .line 109
    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    .line 110
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getStringMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 122
    const-class v1, Lcom/wandoujia/base/utils/DigestUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    monitor-exit v1

    return-object p0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/wandoujia/base/utils/DigestUtils;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/DigestUtils;->bufferToHex([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
