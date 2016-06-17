.class final Lbra;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# instance fields
.field final a:Lbqv;

.field final b:[Lbrb;

.field c:Lbqx;

.field final d:I


# direct methods
.method constructor <init>(Lbqv;Lbqx;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lbra;->a:Lbqv;

    .line 37
    iget v0, p1, Lbqv;->a:I

    iput v0, p0, Lbra;->d:I

    .line 38
    iput-object p2, p0, Lbra;->c:Lbqx;

    .line 39
    iget v0, p0, Lbra;->d:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lbrb;

    iput-object v0, p0, Lbra;->b:[Lbrb;

    .line 40
    return-void
.end method

.method static a(IILbqy;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    if-nez p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return p1

    .line 175
    :cond_1
    invoke-virtual {p2}, Lbqy;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p2, p0}, Lbqy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iput p0, p2, Lbqy;->e:I

    .line 178
    const/4 p1, 0x0

    goto :goto_0

    .line 180
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Lbrb;)V
    .locals 12
    .parameter

    .prologue
    .line 55
    if-eqz p1, :cond_c

    .line 56
    check-cast p1, Lbrc;

    iget-object v7, p0, Lbra;->a:Lbqv;

    iget-object v8, p1, Lbrb;->b:[Lbqy;

    iget-object v1, p1, Lbrb;->b:[Lbqy;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lbqy;->b()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v8, v7}, Lbrc;->a([Lbqy;Lbqv;)V

    iget-object v1, p1, Lbrb;->a:Lbqx;

    iget-boolean v0, p1, Lbrc;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lbqx;->b:Lbns;

    :goto_1
    iget-boolean v2, p1, Lbrc;->c:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Lbqx;->c:Lbns;

    :goto_2
    iget v0, v0, Lbns;->b:F

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lbrc;->b(I)I

    move-result v0

    iget v1, v1, Lbns;->b:F

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lbrc;->b(I)I

    move-result v9

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v6, v0

    :goto_3
    if-ge v6, v9, :cond_c

    aget-object v0, v8, v6

    if-eqz v0, :cond_e

    aget-object v10, v8, v6

    iget v0, v10, Lbqy;->e:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    move v11, v1

    move v1, v2

    move v2, v0

    move v0, v11

    :goto_4
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_2
    iget-object v0, v1, Lbqx;->d:Lbns;

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lbqx;->e:Lbns;

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x1

    iget v1, v10, Lbqy;->e:I

    goto :goto_4

    :cond_5
    if-ltz v0, :cond_6

    iget v4, v10, Lbqy;->e:I

    iget v5, v7, Lbqv;->e:I

    if-ge v4, v5, :cond_6

    if-le v0, v6, :cond_7

    :cond_6
    const/4 v0, 0x0

    aput-object v0, v8, v6

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_4

    :cond_7
    const/4 v4, 0x2

    if-le v1, v4, :cond_d

    add-int/lit8 v4, v1, -0x2

    mul-int/2addr v0, v4

    move v5, v0

    :goto_5
    if-lt v5, v6, :cond_8

    const/4 v0, 0x1

    :goto_6
    const/4 v4, 0x1

    :goto_7
    if-gt v4, v5, :cond_a

    if-nez v0, :cond_a

    sub-int v0, v6, v4

    aget-object v0, v8, v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    if-eqz v0, :cond_b

    const/4 v0, 0x0

    aput-object v0, v8, v6

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_4

    :cond_b
    iget v0, v10, Lbqy;->e:I

    const/4 v2, 0x1

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_4

    .line 59
    :cond_c
    return-void

    :cond_d
    move v5, v0

    goto :goto_5

    :cond_e
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lbra;->b:[Lbrb;

    aget-object v0, v0, v2

    .line 271
    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lbra;->b:[Lbrb;

    iget v1, p0, Lbra;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 274
    :cond_0
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    move v1, v2

    .line 275
    :goto_0
    iget-object v3, v0, Lbrb;->b:[Lbqy;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 276
    const-string v3, "CW %3d:"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v3, v2

    .line 277
    :goto_1
    iget v5, p0, Lbra;->d:I

    add-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_3

    .line 278
    iget-object v5, p0, Lbra;->b:[Lbrb;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    .line 279
    const-string v5, "    |   "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 277
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :cond_1
    iget-object v5, p0, Lbra;->b:[Lbrb;

    aget-object v5, v5, v3

    iget-object v5, v5, Lbrb;->b:[Lbqy;

    aget-object v5, v5, v1

    .line 283
    if-nez v5, :cond_2

    .line 284
    const-string v5, "    |   "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 287
    :cond_2
    const-string v6, " %3d|%3d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v5, Lbqy;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget v5, v5, Lbqy;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 289
    :cond_3
    const-string v3, "%n"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 293
    return-object v0
.end method
