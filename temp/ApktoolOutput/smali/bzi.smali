.class final Lbzi;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# instance fields
.field private final a:Lhss;

.field private final b:Lbzg;

.field private final c:Z

.field private d:Lbzd;


# direct methods
.method constructor <init>(Lhss;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lbzi;->a:Lhss;

    .line 97
    iput-boolean p2, p0, Lbzi;->c:Z

    .line 98
    new-instance v0, Lbzg;

    iget-object v1, p0, Lbzi;->a:Lhss;

    invoke-direct {v0, v1}, Lbzg;-><init>(Lhss;)V

    iput-object v0, p0, Lbzi;->b:Lbzg;

    .line 99
    new-instance v0, Lbzd;

    iget-object v1, p0, Lbzi;->b:Lbzg;

    invoke-direct {v0, v1}, Lbzd;-><init>(Lhth;)V

    iput-object v0, p0, Lbzi;->d:Lbzd;

    .line 100
    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    .line 205
    iget-object v0, p0, Lbzi;->b:Lbzg;

    iget-object v1, p0, Lbzi;->b:Lbzg;

    iput p1, v1, Lbzg;->d:I

    iput p1, v0, Lbzg;->a:I

    .line 206
    iget-object v0, p0, Lbzi;->b:Lbzg;

    iput-short p2, v0, Lbzg;->e:S

    .line 207
    iget-object v0, p0, Lbzi;->b:Lbzg;

    iput-byte p3, v0, Lbzg;->b:B

    .line 208
    iget-object v0, p0, Lbzi;->b:Lbzg;

    iput p4, v0, Lbzg;->c:I

    .line 212
    iget-object v0, p0, Lbzi;->d:Lbzd;

    :goto_0
    iget-object v1, v0, Lbzd;->b:Lhss;

    invoke-interface {v1}, Lhss;->c()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lbzd;->b:Lhss;

    invoke-interface {v1}, Lhss;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v6, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit16 v2, v1, 0x80

    if-ne v2, v6, :cond_4

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lbzd;->a(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lbzd;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lbzc;->a()[Lbzb;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, v0, Lbzd;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lbzc;->a()[Lbzb;

    move-result-object v2

    array-length v2, v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Lbzd;->a(I)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, v0, Lbzd;->e:[Lbzb;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, v0, Lbzd;->a:Ljava/util/List;

    iget-object v3, v0, Lbzd;->e:[Lbzb;

    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-ne v1, v5, :cond_5

    invoke-virtual {v0}, Lbzd;->b()Lokio/ByteString;

    move-result-object v1

    invoke-static {v1}, Lbzc;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0}, Lbzd;->b()Lokio/ByteString;

    move-result-object v2

    new-instance v3, Lbzb;

    invoke-direct {v3, v1, v2}, Lbzb;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {v0, v3}, Lbzd;->a(Lbzb;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v2, v1, 0x40

    if-ne v2, v5, :cond_6

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lbzd;->a(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lbzd;->b(I)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0}, Lbzd;->b()Lokio/ByteString;

    move-result-object v2

    new-instance v3, Lbzb;

    invoke-direct {v3, v1, v2}, Lbzb;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {v0, v3}, Lbzd;->a(Lbzb;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v2, v1, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lbzd;->a(II)I

    move-result v1

    iput v1, v0, Lbzd;->d:I

    iget v1, v0, Lbzd;->d:I

    if-ltz v1, :cond_7

    iget v1, v0, Lbzd;->d:I

    iget v2, v0, Lbzd;->c:I

    if-le v1, v2, :cond_8

    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid dynamic table size update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lbzd;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v0}, Lbzd;->a()V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x10

    if-eq v1, v2, :cond_a

    if-nez v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Lbzd;->b()Lokio/ByteString;

    move-result-object v1

    invoke-static {v1}, Lbzc;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0}, Lbzd;->b()Lokio/ByteString;

    move-result-object v2

    iget-object v3, v0, Lbzd;->a:Ljava/util/List;

    new-instance v4, Lbzb;

    invoke-direct {v4, v1, v2}, Lbzb;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lbzd;->a(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lbzd;->b(I)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0}, Lbzd;->b()Lokio/ByteString;

    move-result-object v2

    iget-object v3, v0, Lbzd;->a:Ljava/util/List;

    new-instance v4, Lbzb;

    invoke-direct {v4, v1, v2}, Lbzb;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    :cond_c
    iget-object v0, p0, Lbzi;->d:Lbzd;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lbzd;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Lbzd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method private a(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lbzi;->a:Lhss;

    invoke-interface {v0}, Lhss;->g()I

    move-result v1

    .line 241
    const/high16 v0, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 242
    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 243
    iget-object v2, p0, Lbzi;->a:Lhss;

    invoke-interface {v2}, Lhss;->e()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 244
    invoke-interface {p1, p2, v1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->priority(IIIZ)V

    .line 245
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lbzi;->a:Lhss;

    invoke-interface {v0}, Lhss;->close()V

    .line 360
    return-void
.end method

.method public final nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x4000

    const/16 v9, 0x8

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lbzi;->a:Lhss;

    const-wide/16 v2, 0x9

    invoke-interface {v0, v2, v3}, Lhss;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v0, p0, Lbzi;->a:Lhss;

    invoke-static {v0}, Lbzf;->a(Lhss;)I

    move-result v0

    .line 131
    if-ltz v0, :cond_0

    if-le v0, v10, :cond_2

    .line 132
    :cond_0
    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 115
    :catch_0
    move-exception v0

    move v7, v1

    .line 180
    :cond_1
    :goto_0
    return v7

    .line 134
    :cond_2
    iget-object v2, p0, Lbzi;->a:Lhss;

    invoke-interface {v2}, Lhss;->e()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 135
    iget-object v3, p0, Lbzi;->a:Lhss;

    invoke-interface {v3}, Lhss;->e()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v5, v3

    .line 136
    iget-object v3, p0, Lbzi;->a:Lhss;

    invoke-interface {v3}, Lhss;->g()I

    move-result v3

    const v6, 0x7fffffff

    and-int/2addr v3, v6

    .line 137
    invoke-static {}, Lbzf;->b()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lbzf;->b()Ljava/util/logging/Logger;

    move-result-object v6

    invoke-static {v7, v3, v0, v2, v5}, Lbzh;->a(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 178
    iget-object v1, p0, Lbzi;->a:Lhss;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lhss;->f(J)V

    goto :goto_0

    .line 141
    :pswitch_0
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_4

    move v4, v7

    :goto_1
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_5

    move v2, v7

    :goto_2
    if-eqz v2, :cond_6

    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    move v4, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_7

    iget-object v1, p0, Lbzi;->a:Lhss;

    invoke-interface {v1}, Lhss;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_7
    invoke-static {v0, v5, v1}, Lbzf;->a(IBS)I

    move-result v0

    iget-object v2, p0, Lbzi;->a:Lhss;

    invoke-interface {p1, v4, v3, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILhss;I)V

    iget-object v0, p0, Lbzi;->a:Lhss;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lhss;->f(J)V

    goto :goto_0

    .line 145
    :pswitch_1
    if-nez v3, :cond_8

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_a

    move v2, v7

    :goto_3
    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_b

    iget-object v4, p0, Lbzi;->a:Lhss;

    invoke-interface {v4}, Lhss;->e()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    :goto_4
    and-int/lit8 v6, v5, 0x20

    if-eqz v6, :cond_9

    invoke-direct {p0, p1, v3}, Lbzi;->a(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    add-int/lit8 v0, v0, -0x5

    :cond_9
    invoke-static {v0, v5, v4}, Lbzf;->a(IBS)I

    move-result v0

    invoke-direct {p0, v0, v4, v5, v3}, Lbzi;->a(ISBI)Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    goto :goto_3

    :cond_b
    move v4, v1

    goto :goto_4

    .line 149
    :pswitch_2
    const/4 v2, 0x5

    if-eq v0, v2, :cond_c

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    if-nez v3, :cond_d

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-direct {p0, p1, v3}, Lbzi;->a(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    goto/16 :goto_0

    .line 153
    :pswitch_3
    if-eq v0, v4, :cond_e

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_e
    if-nez v3, :cond_f

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_f
    iget-object v0, p0, Lbzi;->a:Lhss;

    invoke-interface {v0}, Lhss;->g()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-interface {p1, v3, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto/16 :goto_0

    .line 157
    :pswitch_4
    if-eqz v3, :cond_11

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_11
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_13

    if-eqz v0, :cond_12

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_12
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    goto/16 :goto_0

    :cond_13
    rem-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_14

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    new-instance v5, Lbzr;

    invoke-direct {v5}, Lbzr;-><init>()V

    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_17

    iget-object v2, p0, Lbzi;->a:Lhss;

    invoke-interface {v2}, Lhss;->f()S

    move-result v2

    iget-object v6, p0, Lbzi;->a:Lhss;

    invoke-interface {v6}, Lhss;->g()I

    move-result v6

    packed-switch v2, :pswitch_data_1

    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_5
    if-eqz v6, :cond_15

    if-eq v6, v7, :cond_15

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6
    move v2, v4

    :cond_15
    :pswitch_7
    invoke-virtual {v5, v2, v1, v6}, Lbzr;->a(III)Lbzr;

    add-int/lit8 v2, v3, 0x6

    move v3, v2

    goto :goto_5

    :pswitch_8
    const/4 v2, 0x7

    if-gez v6, :cond_15

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_9
    if-lt v6, v10, :cond_16

    const v8, 0xffffff

    if-le v6, v8, :cond_15

    :cond_16
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-interface {p1, v1, v5}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLbzr;)V

    invoke-virtual {v5}, Lbzr;->a()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lbzi;->d:Lbzd;

    invoke-virtual {v5}, Lbzr;->a()I

    move-result v1

    iput v1, v0, Lbzd;->c:I

    iput v1, v0, Lbzd;->d:I

    invoke-virtual {v0}, Lbzd;->a()V

    goto/16 :goto_0

    .line 161
    :pswitch_a
    if-nez v3, :cond_18

    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_18
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_19

    iget-object v1, p0, Lbzi;->a:Lhss;

    invoke-interface {v1}, Lhss;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_19
    iget-object v2, p0, Lbzi;->a:Lhss;

    invoke-interface {v2}, Lhss;->g()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0, v5, v1}, Lbzf;->a(IBS)I

    move-result v0

    invoke-direct {p0, v0, v1, v5, v3}, Lbzi;->a(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v3, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    goto/16 :goto_0

    .line 165
    :pswitch_b
    if-eq v0, v9, :cond_1a

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1a
    if-eqz v3, :cond_1b

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1b
    iget-object v0, p0, Lbzi;->a:Lhss;

    invoke-interface {v0}, Lhss;->g()I

    move-result v0

    iget-object v2, p0, Lbzi;->a:Lhss;

    invoke-interface {v2}, Lhss;->g()I

    move-result v2

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1c

    move v1, v7

    :cond_1c
    invoke-interface {p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    goto/16 :goto_0

    .line 169
    :pswitch_c
    if-ge v0, v9, :cond_1d

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    if-eqz v3, :cond_1e

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1e
    iget-object v2, p0, Lbzi;->a:Lhss;

    invoke-interface {v2}, Lhss;->g()I

    move-result v2

    iget-object v3, p0, Lbzi;->a:Lhss;

    invoke-interface {v3}, Lhss;->g()I

    move-result v3

    add-int/lit8 v4, v0, -0x8

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v5

    if-nez v5, :cond_1f

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1f
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez v4, :cond_20

    iget-object v0, p0, Lbzi;->a:Lhss;

    int-to-long v8, v4

    invoke-interface {v0, v8, v9}, Lhss;->c(J)Lokio/ByteString;

    move-result-object v0

    :cond_20
    invoke-interface {p1, v2, v5, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V

    goto/16 :goto_0

    .line 173
    :pswitch_d
    if-eq v0, v4, :cond_21

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_21
    iget-object v0, p0, Lbzi;->a:Lhss;

    invoke-interface {v0}, Lhss;->g()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v8, 0x7fffffff

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_22

    const-string v0, "windowSizeIncrement was 0"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_22
    invoke-interface {p1, v3, v4, v5}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 157
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public final readConnectionPreface()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iget-boolean v0, p0, Lbzi;->c:Z

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lbzi;->a:Lhss;

    invoke-static {}, Lbzf;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lhss;->c(J)Lokio/ByteString;

    move-result-object v0

    .line 105
    invoke-static {}, Lbzf;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lbzf;->b()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_2
    invoke-static {}, Lbzf;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lbzf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
