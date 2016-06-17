.class public final Lcbh;
.super Ljava/lang/Object;
.source "WireInput.java"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field private final e:Ljava/io/InputStream;

.field private f:J

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcbh;->f:J

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcbh;->b:I

    .line 301
    const v0, 0x7fffffff

    iput v0, p0, Lcbh;->c:I

    .line 308
    iput-object p1, p0, Lcbh;->e:Ljava/io/InputStream;

    .line 309
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcbh;->a:[B

    .line 310
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcbh;->f:J

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcbh;->b:I

    .line 301
    const v0, 0x7fffffff

    iput v0, p0, Lcbh;->c:I

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcbh;->e:Ljava/io/InputStream;

    .line 316
    iput-object p1, p0, Lcbh;->a:[B

    .line 317
    neg-int v0, p2

    int-to-long v0, v0

    iput-wide v0, p0, Lcbh;->f:J

    .line 318
    iput p2, p0, Lcbh;->b:I

    .line 319
    add-int v0, p2, p3

    iput v0, p0, Lcbh;->g:I

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcbh;->h:Z

    .line 321
    return-void
.end method

.method private e(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 341
    iget v0, p0, Lcbh;->b:I

    iget v2, p0, Lcbh;->g:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcbh;->h:Z

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-wide v2, p0, Lcbh;->f:J

    iget v0, p0, Lcbh;->b:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcbh;->f:J

    .line 346
    iput v1, p0, Lcbh;->b:I

    .line 350
    const/16 v0, 0x400

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    .line 351
    :goto_1
    if-ge v0, v2, :cond_3

    .line 352
    iget-object v3, p0, Lcbh;->e:Ljava/io/InputStream;

    iget-object v4, p0, Lcbh;->a:[B

    rsub-int v5, v0, 0x400

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 353
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 355
    iput v0, p0, Lcbh;->g:I

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcbh;->h:Z

    goto :goto_0

    .line 359
    :cond_2
    add-int/2addr v0, v3

    .line 360
    goto :goto_1

    .line 363
    :cond_3
    iput v0, p0, Lcbh;->g:I

    .line 364
    iput-boolean v1, p0, Lcbh;->h:Z

    goto :goto_0
.end method

.method private i()B
    .locals 3

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcbh;->e(I)V

    .line 424
    invoke-virtual {p0}, Lcbh;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "The input ended unexpectedly in the middle of a field"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcbh;->a:[B

    iget v1, p0, Lcbh;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcbh;->b:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0}, Lcbh;->g()J

    move-result-wide v2

    iget v4, p0, Lcbh;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 89
    iput v0, p0, Lcbh;->i:I

    .line 98
    :goto_1
    return v0

    .line 88
    :cond_1
    invoke-direct {p0, v1}, Lcbh;->e(I)V

    invoke-virtual {p0}, Lcbh;->b()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcbh;->h:Z

    if-nez v2, :cond_0

    :cond_2
    move v1, v0

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcbh;->c()I

    move-result v0

    iput v0, p0, Lcbh;->i:I

    .line 94
    iget v0, p0, Lcbh;->i:I

    if-nez v0, :cond_4

    .line 96
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4
    iget v0, p0, Lcbh;->i:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcbh;->i:I

    if-eq v0, p1, :cond_0

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcbh;->g:I

    iget v1, p0, Lcbh;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b(I)Lcom/squareup/wire/ByteString;
    .locals 2
    .parameter

    .prologue
    .line 143
    invoke-virtual {p0}, Lcbh;->b()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 144
    iget-object v0, p0, Lcbh;->a:[B

    iget v1, p0, Lcbh;->b:I

    invoke-static {v0, v1, p1}, Lcom/squareup/wire/ByteString;->of([BII)Lcom/squareup/wire/ByteString;

    move-result-object v0

    .line 145
    iget v1, p0, Lcbh;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcbh;->b:I

    .line 148
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcbh;->d(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/wire/ByteString;->of([B)Lcom/squareup/wire/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcbh;->i()B

    move-result v0

    .line 157
    if-ltz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 161
    invoke-direct {p0}, Lcbh;->i()B

    move-result v1

    if-ltz v1, :cond_2

    .line 162
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 164
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 165
    invoke-direct {p0}, Lcbh;->i()B

    move-result v1

    if-ltz v1, :cond_3

    .line 166
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 168
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 169
    invoke-direct {p0}, Lcbh;->i()B

    move-result v1

    if-ltz v1, :cond_4

    .line 170
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 172
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 173
    invoke-direct {p0}, Lcbh;->i()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 174
    if-gez v1, :cond_0

    .line 176
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 177
    invoke-direct {p0}, Lcbh;->i()B

    move-result v2

    if-gez v2, :cond_0

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "WireInput encountered a malformed varint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(I)I
    .locals 6
    .parameter

    .prologue
    .line 374
    if-gez p1, :cond_0

    .line 375
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered a negative size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcbh;->f:J

    iget v4, p0, Lcbh;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 378
    iget v1, p0, Lcbh;->c:I

    .line 379
    if-le v0, v1, :cond_1

    .line 380
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "The input ended unexpectedly in the middle of a field"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    iput v0, p0, Lcbh;->c:I

    .line 383
    return v1
.end method

.method public final d()J
    .locals 6

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 192
    const-wide/16 v0, 0x0

    .line 193
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 194
    invoke-direct {p0}, Lcbh;->i()B

    move-result v3

    .line 195
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 196
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 197
    return-wide v0

    .line 199
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 200
    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "WireInput encountered a malformed varint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)[B
    .locals 5
    .parameter

    .prologue
    .line 436
    if-gez p1, :cond_0

    .line 437
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered a negative size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    new-array v1, p1, [B

    .line 441
    const/4 v0, 0x0

    .line 442
    :goto_0
    if-ge v0, p1, :cond_2

    .line 443
    sub-int v2, p1, v0

    invoke-direct {p0, v2}, Lcbh;->e(I)V

    .line 444
    invoke-virtual {p0}, Lcbh;->b()I

    move-result v2

    if-nez v2, :cond_1

    .line 445
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "The input ended unexpectedly in the middle of a field"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    sub-int v2, p1, v0

    invoke-virtual {p0}, Lcbh;->b()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 448
    iget-object v3, p0, Lcbh;->a:[B

    iget v4, p0, Lcbh;->b:I

    invoke-static {v3, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget v3, p0, Lcbh;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lcbh;->b:I

    .line 450
    add-int/2addr v0, v2

    .line 451
    goto :goto_0

    .line 452
    :cond_2
    return-object v1
.end method

.method public final e()I
    .locals 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcbh;->i()B

    move-result v0

    .line 207
    invoke-direct {p0}, Lcbh;->i()B

    move-result v1

    .line 208
    invoke-direct {p0}, Lcbh;->i()B

    move-result v2

    .line 209
    invoke-direct {p0}, Lcbh;->i()B

    move-result v3

    .line 210
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final f()J
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    .line 218
    invoke-direct {p0}, Lcbh;->i()B

    move-result v0

    .line 219
    invoke-direct {p0}, Lcbh;->i()B

    move-result v1

    .line 220
    invoke-direct {p0}, Lcbh;->i()B

    move-result v2

    .line 221
    invoke-direct {p0}, Lcbh;->i()B

    move-result v3

    .line 222
    invoke-direct {p0}, Lcbh;->i()B

    move-result v4

    .line 223
    invoke-direct {p0}, Lcbh;->i()B

    move-result v5

    .line 224
    invoke-direct {p0}, Lcbh;->i()B

    move-result v6

    .line 225
    invoke-direct {p0}, Lcbh;->i()B

    move-result v7

    .line 226
    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final g()J
    .locals 4

    .prologue
    .line 414
    iget-wide v0, p0, Lcbh;->f:J

    iget v2, p0, Lcbh;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcbh;->a()I

    move-result v0

    .line 458
    if-eqz v0, :cond_1

    sget-object v2, Lcbi;->a:[I

    invoke-static {v0}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcbh;->d()J

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 459
    :cond_1
    return-void

    .line 458
    :pswitch_1
    invoke-virtual {p0}, Lcbh;->e()I

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcbh;->f()J

    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcbh;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcbh;->d(I)[B

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcbh;->h()V

    and-int/lit8 v0, v0, -0x8

    sget-object v2, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    invoke-virtual {v2}, Lcom/squareup/wire/WireType;->value()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcbh;->a(I)V

    move v0, v1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
