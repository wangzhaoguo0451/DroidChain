.class public abstract Labs;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# instance fields
.field protected final a:I

.field protected b:[B

.field protected c:I

.field protected d:Z

.field protected e:I

.field protected f:I

.field private final g:I

.field private h:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Labs;->a:I

    .line 159
    iput p2, p0, Labs;->g:I

    .line 160
    return-void
.end method

.method private a([BI)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Labs;->b:[B

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Labs;->b:[B

    if-eqz v0, :cond_2

    iget v0, p0, Labs;->c:I

    iget v2, p0, Labs;->h:I

    sub-int/2addr v0, v2

    :goto_0
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    iget-object v2, p0, Labs;->b:[B

    iget v3, p0, Labs;->h:I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget v1, p0, Labs;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Labs;->h:I

    .line 236
    iget v1, p0, Labs;->h:I

    iget v2, p0, Labs;->c:I

    if-lt v1, v2, :cond_0

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Labs;->b:[B

    :cond_0
    move v1, v0

    .line 242
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 233
    goto :goto_0

    .line 242
    :cond_3
    iget-boolean v0, p0, Labs;->d:Z

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Labs;->b:[B

    .line 270
    iput v1, p0, Labs;->c:I

    .line 271
    iput v1, p0, Labs;->h:I

    .line 272
    iput v1, p0, Labs;->e:I

    .line 273
    iput v1, p0, Labs;->f:I

    .line 274
    iput-boolean v1, p0, Labs;->d:Z

    .line 275
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Labs;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Labs;->b:[B

    array-length v0, v0

    iget v1, p0, Labs;->c:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Labs;->b:[B

    if-nez v0, :cond_2

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Labs;->b:[B

    iput v3, p0, Labs;->c:I

    iput v3, p0, Labs;->h:I

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Labs;->b:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Labs;->b:[B

    iget-object v2, p0, Labs;->b:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labs;->b:[B

    goto :goto_0
.end method

.method abstract a([BII)V
.end method

.method protected abstract a(B)Z
.end method

.method abstract b([BII)V
.end method

.method public final b([B)[B
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-direct {p0}, Labs;->a()V

    .line 353
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object p1

    .line 356
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Labs;->b([BII)V

    .line 357
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Labs;->b([BII)V

    .line 358
    iget v0, p0, Labs;->c:I

    new-array p1, v0, [B

    .line 359
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Labs;->a([BI)I

    goto :goto_0
.end method

.method public final c([B)[B
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-direct {p0}, Labs;->a()V

    .line 389
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-object p1

    .line 392
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Labs;->a([BII)V

    .line 393
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Labs;->a([BII)V

    .line 394
    iget v0, p0, Labs;->c:I

    iget v1, p0, Labs;->h:I

    sub-int/2addr v0, v1

    new-array p1, v0, [B

    .line 395
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Labs;->a([BI)I

    goto :goto_0
.end method

.method protected final d([B)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 500
    if-nez p1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    .line 503
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-byte v3, p1, v1

    .line 504
    const/16 v4, 0x3d

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Labs;->a(B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 505
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 503
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final e([B)J
    .locals 6
    .parameter

    .prologue
    .line 523
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    .line 525
    iget v2, p0, Labs;->a:I

    if-lez v2, :cond_0

    .line 527
    iget v2, p0, Labs;->a:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Labs;->a:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Labs;->g:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 529
    :cond_0
    return-wide v0
.end method
