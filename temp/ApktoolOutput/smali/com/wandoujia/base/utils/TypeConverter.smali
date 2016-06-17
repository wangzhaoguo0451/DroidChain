.class public Lcom/wandoujia/base/utils/TypeConverter;
.super Ljava/lang/Object;
.source "TypeConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2Int([B)I
    .locals 3
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 17
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 18
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 19
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static bytes2Long([B)J
    .locals 5
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    .line 25
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 26
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 27
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 28
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 29
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 30
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 31
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 32
    return-wide v0
.end method

.method public static bytes2str([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 41
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 44
    aget-byte v1, p0, v0

    .line 45
    if-gez v1, :cond_0

    .line 46
    add-int/lit16 v1, v1, 0x100

    .line 48
    :cond_0
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static int2Bytes(I)[B
    .locals 3
    .parameter

    .prologue
    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 7
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 8
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 9
    const/4 v1, 0x2

    const/high16 v2, 0xff

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 10
    const/4 v1, 0x3

    const/high16 v2, -0x100

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 12
    return-object v0
.end method

.method public static long2Bytes(J)[B
    .locals 1
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public static str2bytes(Ljava/lang/String;)[B
    .locals 5
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 56
    array-length v0, v2

    new-array v3, v0, [B

    .line 58
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    .line 59
    aget-char v1, v2, v0

    .line 60
    const/16 v4, 0x80

    if-lt v1, v4, :cond_0

    .line 61
    add-int/lit16 v1, v1, -0x100

    .line 63
    :cond_0
    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return-object v3
.end method
