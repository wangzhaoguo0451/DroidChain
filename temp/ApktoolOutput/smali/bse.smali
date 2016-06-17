.class final Lbse;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field final a:Lboa;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsd;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field private final g:F

.field private final h:[I

.field private final i:Lbnt;


# direct methods
.method constructor <init>(Lboa;IIIIFLbnt;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lbse;->a:Lboa;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbse;->b:Ljava/util/List;

    .line 71
    iput p2, p0, Lbse;->c:I

    .line 72
    iput p3, p0, Lbse;->d:I

    .line 73
    iput p4, p0, Lbse;->e:I

    .line 74
    iput p5, p0, Lbse;->f:I

    .line 75
    iput p6, p0, Lbse;->g:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lbse;->h:[I

    .line 77
    iput-object p7, p0, Lbse;->i:Lbnt;

    .line 78
    return-void
.end method

.method private static a([II)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method final a([III)Lbsd;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v1, v0

    .line 257
    invoke-static {p1, p3}, Lbse;->a([II)F

    move-result v3

    .line 258
    float-to-int v2, v3

    const/4 v0, 0x1

    aget v0, p1, v0

    mul-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lbse;->a:Lboa;

    iget v6, v5, Lboa;->b:I

    iget-object v7, p0, Lbse;->h:[I

    const/4 v0, 0x0

    const/4 v8, 0x0

    aput v8, v7, v0

    const/4 v0, 0x1

    const/4 v8, 0x0

    aput v8, v7, v0

    const/4 v0, 0x2

    const/4 v8, 0x0

    aput v8, v7, v0

    move v0, p2

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v5, v2, v0}, Lboa;->a(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_0

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_4

    :cond_1
    const/high16 v0, 0x7fc0

    move v1, v0

    .line 259
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_11

    .line 260
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x4040

    div-float v4, v0, v2

    .line 261
    iget-object v0, p0, Lbse;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsd;

    .line 263
    iget v2, v0, Lbns;->b:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_f

    iget v2, v0, Lbns;->a:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_f

    iget v2, v0, Lbsd;->c:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-lez v6, :cond_3

    iget v6, v0, Lbsd;->c:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_e

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    .line 264
    iget v2, v0, Lbns;->a:F

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, v0, Lbns;->b:F

    add-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    iget v0, v0, Lbsd;->c:F

    add-float/2addr v0, v4

    const/high16 v3, 0x4000

    div-float v3, v0, v3

    new-instance v0, Lbsd;

    invoke-direct {v0, v2, v1, v3}, Lbsd;-><init>(FFF)V

    .line 274
    :goto_3
    return-object v0

    .line 258
    :cond_4
    :goto_4
    if-ltz v0, :cond_5

    invoke-virtual {v5, v2, v0}, Lboa;->a(II)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    aget v8, v7, v8

    if-gt v8, v4, :cond_5

    const/4 v8, 0x0

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    aget v0, v7, v0

    if-le v0, v4, :cond_6

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, p2, 0x1

    :goto_5
    if-ge v0, v6, :cond_7

    invoke-virtual {v5, v2, v0}, Lboa;->a(II)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_7

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    if-eq v0, v6, :cond_8

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_9

    :cond_8
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_1

    :cond_9
    :goto_6
    if-ge v0, v6, :cond_a

    invoke-virtual {v5, v2, v0}, Lboa;->a(II)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x2

    aget v8, v7, v8

    if-gt v8, v4, :cond_a

    const/4 v8, 0x2

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, 0x2

    aget v2, v7, v2

    if-le v2, v4, :cond_b

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    const/4 v4, 0x2

    aget v4, v7, v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v1, v1, 0x2

    if-lt v2, v1, :cond_c

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, v7}, Lbse;->a([I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v7, v0}, Lbse;->a([II)F

    move-result v0

    move v1, v0

    goto/16 :goto_1

    :cond_d
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_1

    .line 263
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 268
    :cond_10
    new-instance v0, Lbsd;

    invoke-direct {v0, v3, v1, v4}, Lbsd;-><init>(FFF)V

    .line 269
    iget-object v1, p0, Lbse;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Lbse;->i:Lbnt;

    if-eqz v1, :cond_11

    .line 271
    iget-object v1, p0, Lbse;->i:Lbnt;

    invoke-virtual {v1, v0}, Lbnt;->a(Lbns;)V

    .line 274
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method final a([I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 170
    iget v2, p0, Lbse;->g:F

    .line 171
    const/high16 v1, 0x4000

    div-float v3, v2, v1

    move v1, v0

    .line 172
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 173
    aget v4, p1, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_0

    .line 177
    :goto_1
    return v0

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
