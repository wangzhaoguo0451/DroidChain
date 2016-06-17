.class final Lbop;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field final a:Lboa;

.field final b:Lboa;

.field final c:Lbot;


# direct methods
.method constructor <init>(Lboa;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget v0, p1, Lboa;->b:I

    .line 37
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 41
    :cond_1
    iget v0, p1, Lboa;->b:I

    iget v1, p1, Lboa;->a:I

    invoke-static {v0, v1}, Lbot;->a(II)Lbot;

    move-result-object v0

    iput-object v0, p0, Lbop;->c:Lbot;

    .line 42
    invoke-direct {p0, p1}, Lbop;->a(Lboa;)Lboa;

    move-result-object v0

    iput-object v0, p0, Lbop;->a:Lboa;

    .line 43
    new-instance v0, Lboa;

    iget-object v1, p0, Lbop;->a:Lboa;

    iget v1, v1, Lboa;->a:I

    iget-object v2, p0, Lbop;->a:Lboa;

    iget v2, v2, Lboa;->b:I

    invoke-direct {v0, v1, v2}, Lboa;-><init>(II)V

    iput-object v0, p0, Lbop;->b:Lboa;

    .line 44
    return-void
.end method

.method private a(Lboa;)Lboa;
    .locals 14
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lbop;->c:Lbot;

    iget v0, v0, Lbot;->b:I

    .line 404
    iget-object v1, p0, Lbop;->c:Lbot;

    iget v1, v1, Lbot;->c:I

    .line 406
    iget v2, p1, Lboa;->b:I

    if-eq v2, v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dimension of bitMarix must match the version size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget-object v2, p0, Lbop;->c:Lbot;

    iget v4, v2, Lbot;->d:I

    .line 411
    iget-object v2, p0, Lbop;->c:Lbot;

    iget v5, v2, Lbot;->e:I

    .line 413
    div-int v6, v0, v4

    .line 414
    div-int v7, v1, v5

    .line 416
    mul-int v0, v6, v4

    .line 417
    mul-int v1, v7, v5

    .line 419
    new-instance v8, Lboa;

    invoke-direct {v8, v1, v0}, Lboa;-><init>(II)V

    .line 420
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_5

    .line 421
    mul-int v9, v3, v4

    .line 422
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_4

    .line 423
    mul-int v10, v2, v5

    .line 424
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_3

    .line 425
    add-int/lit8 v0, v4, 0x2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    add-int v11, v0, v1

    .line 426
    add-int v12, v9, v1

    .line 427
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_2

    .line 428
    add-int/lit8 v13, v5, 0x2

    mul-int/2addr v13, v2

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v0

    .line 429
    invoke-virtual {p1, v13, v11}, Lboa;->a(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 430
    add-int v13, v10, v0

    .line 431
    invoke-virtual {v8, v13, v12}, Lboa;->b(II)V

    .line 427
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 424
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 422
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 420
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 437
    :cond_5
    return-object v8
.end method


# virtual methods
.method final a(IIII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    if-gez p1, :cond_1

    .line 157
    add-int v1, p1, p3

    .line 158
    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    .line 160
    :goto_0
    if-gez v0, :cond_0

    .line 161
    add-int/2addr v0, p4

    .line 162
    add-int/lit8 v2, p4, 0x4

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 164
    :cond_0
    iget-object v2, p0, Lbop;->b:Lboa;

    invoke-virtual {v2, v0, v1}, Lboa;->b(II)V

    .line 165
    iget-object v2, p0, Lbop;->a:Lboa;

    invoke-virtual {v2, v0, v1}, Lboa;->a(II)Z

    move-result v0

    return v0

    :cond_1
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method final b(IIII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lbop;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 184
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 185
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lbop;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    or-int/lit8 v0, v0, 0x1

    .line 188
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 189
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lbop;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    or-int/lit8 v0, v0, 0x1

    .line 192
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 193
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lbop;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    or-int/lit8 v0, v0, 0x1

    .line 196
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 197
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, p2, p3, p4}, Lbop;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    or-int/lit8 v0, v0, 0x1

    .line 200
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lbop;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    or-int/lit8 v0, v0, 0x1

    .line 204
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 205
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lbop;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    or-int/lit8 v0, v0, 0x1

    .line 208
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 209
    invoke-virtual {p0, p1, p2, p3, p4}, Lbop;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 210
    or-int/lit8 v0, v0, 0x1

    .line 212
    :cond_7
    return v0
.end method
