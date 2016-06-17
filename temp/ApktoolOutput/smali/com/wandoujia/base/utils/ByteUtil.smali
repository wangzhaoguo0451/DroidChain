.class public Lcom/wandoujia/base/utils/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# static fields
.field private static hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wandoujia/base/utils/ByteUtil;->hexDigits:[C

    return-void

    :array_0
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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/wandoujia/base/utils/ByteUtil;->hexDigits:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 50
    sget-object v1, Lcom/wandoujia/base/utils/ByteUtil;->hexDigits:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/wandoujia/base/utils/ByteUtil;->bytesToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToHex([BII)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 41
    add-int v1, p1, p2

    .line 42
    :goto_0
    if-ge p1, v1, :cond_0

    .line 43
    aget-byte v2, p0, p1

    invoke-static {v2, v0}, Lcom/wandoujia/base/utils/ByteUtil;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 42
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromBytes([B)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 23
    move v1, v0

    .line 24
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 25
    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 26
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return v1
.end method

.method public static getBytes(I)[B
    .locals 3
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 15
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 16
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 17
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 18
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 19
    return-object v0
.end method
