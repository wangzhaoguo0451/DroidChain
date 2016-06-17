.class final Lbzd;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lhss;

.field c:I

.field d:I

.field e:[Lbzb;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>(Lhth;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbzd;->a:Ljava/util/List;

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [Lbzb;

    iput-object v0, p0, Lbzd;->e:[Lbzb;

    .line 124
    iget-object v0, p0, Lbzd;->e:[Lbzb;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbzd;->f:I

    .line 125
    iput v1, p0, Lbzd;->g:I

    .line 126
    iput v1, p0, Lbzd;->h:I

    .line 129
    iput v2, p0, Lbzd;->c:I

    .line 130
    iput v2, p0, Lbzd;->d:I

    .line 131
    invoke-static {p1}, Lhsx;->a(Lhth;)Lhss;

    move-result-object v0

    iput-object v0, p0, Lbzd;->b:Lhss;

    .line 132
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lbzd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lbzd;->e:[Lbzb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lbzd;->e:[Lbzb;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbzd;->f:I

    .line 165
    iput v2, p0, Lbzd;->g:I

    .line 166
    iput v2, p0, Lbzd;->h:I

    .line 167
    return-void
.end method

.method static c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 278
    if-ltz p0, :cond_0

    invoke-static {}, Lbzc;->a()[Lbzb;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lbzd;->b:Lhss;

    invoke-interface {v0}, Lhss;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private d(I)I
    .locals 6
    .parameter

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    if-lez p1, :cond_1

    .line 174
    iget-object v0, p0, Lbzd;->e:[Lbzb;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lbzd;->f:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    .line 175
    iget-object v2, p0, Lbzd;->e:[Lbzb;

    aget-object v2, v2, v0

    iget v2, v2, Lbzb;->j:I

    sub-int/2addr p1, v2

    .line 176
    iget v2, p0, Lbzd;->h:I

    iget-object v3, p0, Lbzd;->e:[Lbzb;

    aget-object v3, v3, v0

    iget v3, v3, Lbzb;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lbzd;->h:I

    .line 177
    iget v2, p0, Lbzd;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbzd;->g:I

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 174
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lbzd;->e:[Lbzb;

    iget v2, p0, Lbzd;->f:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lbzd;->e:[Lbzb;

    iget v4, p0, Lbzd;->f:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lbzd;->g:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget v0, p0, Lbzd;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lbzd;->f:I

    .line 184
    :cond_1
    return v1
.end method


# virtual methods
.method final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 241
    iget v0, p0, Lbzd;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method final a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 322
    and-int v0, p1, p2

    .line 323
    if-ge v0, p2, :cond_0

    .line 337
    :goto_0
    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 331
    :goto_1
    invoke-direct {p0}, Lbzd;->d()I

    move-result v1

    .line 332
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 333
    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 334
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 336
    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    .line 337
    goto :goto_0
.end method

.method final a()V
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lbzd;->d:I

    iget v1, p0, Lbzd;->h:I

    if-ge v0, v1, :cond_0

    .line 153
    iget v0, p0, Lbzd;->d:I

    if-nez v0, :cond_1

    .line 154
    invoke-direct {p0}, Lbzd;->c()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p0, Lbzd;->h:I

    iget v1, p0, Lbzd;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lbzd;->d(I)I

    goto :goto_0
.end method

.method final a(Lbzb;)V
    .locals 6
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lbzd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget v0, p1, Lbzb;->j:I

    .line 286
    iget v1, p0, Lbzd;->d:I

    if-le v0, v1, :cond_0

    .line 292
    invoke-direct {p0}, Lbzd;->c()V

    .line 315
    :goto_0
    return-void

    .line 297
    :cond_0
    iget v1, p0, Lbzd;->h:I

    add-int/2addr v1, v0

    iget v2, p0, Lbzd;->d:I

    sub-int/2addr v1, v2

    .line 298
    invoke-direct {p0, v1}, Lbzd;->d(I)I

    .line 300
    iget v1, p0, Lbzd;->g:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbzd;->e:[Lbzb;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 302
    iget-object v1, p0, Lbzd;->e:[Lbzb;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lbzb;

    .line 303
    iget-object v2, p0, Lbzd;->e:[Lbzb;

    const/4 v3, 0x0

    iget-object v4, p0, Lbzd;->e:[Lbzb;

    array-length v4, v4

    iget-object v5, p0, Lbzd;->e:[Lbzb;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v2, p0, Lbzd;->e:[Lbzb;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbzd;->f:I

    .line 305
    iput-object v1, p0, Lbzd;->e:[Lbzb;

    .line 307
    :cond_1
    iget v1, p0, Lbzd;->f:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lbzd;->f:I

    .line 308
    iget-object v2, p0, Lbzd;->e:[Lbzb;

    aput-object p1, v2, v1

    .line 309
    iget v1, p0, Lbzd;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbzd;->g:I

    .line 311
    iget v1, p0, Lbzd;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lbzd;->h:I

    goto :goto_0
.end method

.method final b()Lokio/ByteString;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-direct {p0}, Lbzd;->d()I

    move-result v2

    .line 346
    and-int/lit16 v0, v2, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 347
    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lbzd;->a(II)I

    move-result v2

    .line 349
    if-eqz v0, :cond_5

    .line 350
    invoke-static {}, Lbzk;->a()Lbzk;

    move-result-object v4

    iget-object v0, p0, Lbzd;->b:Lhss;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lhss;->e(J)[B

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, v4, Lbzk;->a:Lbzl;

    move v2, v1

    move-object v3, v0

    move v0, v1

    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    aget-byte v7, v5, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x8

    :goto_2
    const/16 v7, 0x8

    if-lt v0, v7, :cond_2

    add-int/lit8 v7, v0, -0x8

    ushr-int v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    iget-object v3, v3, Lbzl;->a:[Lbzl;

    aget-object v3, v3, v7

    iget-object v7, v3, Lbzl;->a:[Lbzl;

    if-nez v7, :cond_1

    iget v7, v3, Lbzl;->b:I

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, v3, Lbzl;->c:I

    sub-int/2addr v0, v3

    iget-object v3, v4, Lbzk;->a:Lbzl;

    goto :goto_2

    :cond_0
    move v0, v1

    .line 346
    goto :goto_0

    .line 350
    :cond_1
    add-int/lit8 v0, v0, -0x8

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v0, :cond_4

    rsub-int/lit8 v1, v0, 0x8

    shl-int v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v3, v3, Lbzl;->a:[Lbzl;

    aget-object v1, v3, v1

    iget-object v3, v1, Lbzl;->a:[Lbzl;

    if-nez v3, :cond_4

    iget v3, v1, Lbzl;->c:I

    if-gt v3, v0, :cond_4

    iget v3, v1, Lbzl;->b:I

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v1, v1, Lbzl;->c:I

    sub-int/2addr v0, v1

    iget-object v3, v4, Lbzk;->a:Lbzl;

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    .line 352
    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lbzd;->b:Lhss;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lhss;->c(J)Lokio/ByteString;

    move-result-object v0

    goto :goto_4
.end method

.method final b(I)Lokio/ByteString;
    .locals 2
    .parameter

    .prologue
    .line 270
    invoke-static {p1}, Lbzd;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lbzc;->a()[Lbzb;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lbzb;->h:Lokio/ByteString;

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbzd;->e:[Lbzb;

    invoke-static {}, Lbzc;->a()[Lbzb;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lbzd;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lbzb;->h:Lokio/ByteString;

    goto :goto_0
.end method
