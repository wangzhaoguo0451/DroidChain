.class public Lcom/wandoujia/base/utils/SimpleCharsetDetector;
.super Ljava/lang/Object;
.source "SimpleCharsetDetector.java"


# static fields
.field public static final GBK:Ljava/lang/String; = "GBK"

.field private static final MAX_BYTES:I = 0x190

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectBytes([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 23
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/SimpleCharsetDetector;->detectInputStream(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static detectFile(Ljava/io/File;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 116
    .line 117
    if-nez p0, :cond_0

    .line 118
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 121
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 125
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 126
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .line 127
    if-eq v2, v4, :cond_4

    .line 128
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    if-ne v2, v5, :cond_1

    .line 130
    const-string v0, "UTF-16LE"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    aget-byte v2, v0, v2

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_2

    .line 133
    const-string v0, "UTF-16BE"

    goto :goto_1

    .line 134
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, -0x11

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/16 v3, -0x45

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    const/16 v2, -0x41

    if-ne v0, v2, :cond_3

    .line 137
    const-string v0, "UTF-8"

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    .line 140
    const/16 v0, 0x190

    invoke-static {v1, v0}, Lcom/wandoujia/base/utils/SimpleCharsetDetector;->detectInputStream(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v0, p1

    goto :goto_1
.end method

.method private static detectInputStream(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xbf

    const/16 v5, 0x80

    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x1

    move v2, v0

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 44
    if-gt v2, p1, :cond_5

    .line 45
    const/16 v4, 0xf0

    if-lt v3, v4, :cond_2

    .line 92
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    const-string v0, "UTF-8"

    :goto_1
    return-object v0

    .line 55
    :cond_2
    if-gt v5, v3, :cond_3

    if-le v3, v6, :cond_1

    .line 61
    :cond_3
    const/16 v4, 0xc0

    if-gt v4, v3, :cond_4

    const/16 v4, 0xdf

    if-gt v3, v4, :cond_4

    .line 62
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 64
    if-gt v5, v3, :cond_1

    if-le v3, v6, :cond_0

    goto :goto_0

    .line 73
    :cond_4
    const/16 v4, 0xe0

    if-gt v4, v3, :cond_0

    const/16 v4, 0xef

    if-gt v3, v4, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 76
    if-gt v5, v3, :cond_1

    if-gt v3, v6, :cond_1

    .line 77
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 79
    if-gt v5, v3, :cond_1

    if-le v3, v6, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 92
    :cond_6
    const-string v0, "GBK"

    goto :goto_1
.end method

.method public static trySkipBomHeader(Ljava/io/InputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 102
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 103
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 104
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, -0x11

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, -0x45

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/16 v1, -0x41

    if-eq v0, v1, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method
