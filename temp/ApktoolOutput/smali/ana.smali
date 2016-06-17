.class public final Lana;
.super Ljava/lang/Object;
.source "GifFormatChecker.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lana;->a:[B

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lana;->b:[B

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lana;->c:[B

    return-void

    .line 30
    :array_0
    .array-data 0x1
        0x0t
        0x21t
        0xf9t
        0x4t
    .end array-data

    .line 36
    :array_1
    .array-data 0x1
        0x0t
        0x2ct
    .end array-data

    .line 38
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x21t
    .end array-data
.end method

.method public static a(Ljava/io/InputStream;)Z
    .locals 7
    .parameter

    .prologue
    const/16 v2, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    new-array v4, v2, [B

    .line 51
    const/4 v2, 0x0

    const/16 v3, 0xa

    :try_start_0
    invoke-virtual {p0, v4, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move v2, v1

    move v3, v1

    .line 58
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_2

    .line 61
    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lana;->a:[B

    invoke-static {v4, v5, v6}, Lana;->a([BI[B)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v3, 0x9

    sget-object v6, Lana;->b:[B

    invoke-static {v4, v5, v6}, Lana;->a([BI[B)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v5, v3, 0x9

    sget-object v6, Lana;->c:[B

    invoke-static {v4, v5, v6}, Lana;->a([BI[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 65
    if-le v2, v0, :cond_1

    .line 75
    :goto_1
    return v0

    .line 69
    :cond_1
    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0xa
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v0, v1

    .line 75
    goto :goto_1
.end method

.method private static a([BI[B)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 92
    array-length v0, p2

    const/16 v3, 0xa

    if-le v0, v3, :cond_2

    .line 101
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 91
    goto :goto_0

    :cond_2
    move v0, v2

    .line 96
    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 97
    add-int v3, v0, p1

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, p0, v3

    aget-byte v4, p2, v0

    if-ne v3, v4, :cond_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    .line 101
    goto :goto_1
.end method
