.class public final Lamc;
.super Lalz;
.source "FadeDrawable.java"


# instance fields
.field public b:I

.field public c:I

.field public d:[Z

.field private final e:[Landroid/graphics/drawable/Drawable;

.field private f:J

.field private g:[I

.field private h:[I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0xff

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1}, Lalz;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 87
    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "At least one layer required!"

    invoke-static {v0, v3}, Ld;->b(ZLjava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lamc;->e:[Landroid/graphics/drawable/Drawable;

    .line 89
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lamc;->g:[I

    .line 90
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lamc;->h:[I

    .line 91
    iput v4, p0, Lamc;->i:I

    .line 92
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lamc;->d:[Z

    .line 93
    iput v2, p0, Lamc;->j:I

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lamc;->b:I

    iget-object v0, p0, Lamc;->g:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lamc;->g:[I

    aput v4, v0, v2

    iget-object v0, p0, Lamc;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lamc;->h:[I

    aput v4, v0, v2

    iget-object v0, p0, Lamc;->d:[Z

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lamc;->d:[Z

    aput-boolean v1, v0, v2

    .line 95
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0
.end method

.method private a(F)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0xff

    const/4 v1, 0x0

    .line 238
    move v0, v1

    move v2, v3

    .line 239
    :goto_0
    iget-object v4, p0, Lamc;->e:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 240
    iget-object v4, p0, Lamc;->d:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_4

    move v4, v3

    .line 242
    :goto_1
    iget-object v5, p0, Lamc;->h:[I

    iget-object v6, p0, Lamc;->g:[I

    aget v6, v6, v0

    int-to-float v6, v6

    mul-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v5, v0

    .line 243
    iget-object v4, p0, Lamc;->h:[I

    aget v4, v4, v0

    if-gez v4, :cond_0

    .line 244
    iget-object v4, p0, Lamc;->h:[I

    aput v1, v4, v0

    .line 246
    :cond_0
    iget-object v4, p0, Lamc;->h:[I

    aget v4, v4, v0

    if-le v4, v7, :cond_1

    .line 247
    iget-object v4, p0, Lamc;->h:[I

    aput v7, v4, v0

    .line 250
    :cond_1
    iget-object v4, p0, Lamc;->d:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lamc;->h:[I

    aget v4, v4, v0

    if-ge v4, v7, :cond_2

    move v2, v1

    .line 253
    :cond_2
    iget-object v4, p0, Lamc;->d:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_3

    iget-object v4, p0, Lamc;->h:[I

    aget v4, v4, v0

    if-lez v4, :cond_3

    move v2, v1

    .line 239
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    .line 257
    :cond_5
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lamc;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lamc;->j:I

    .line 109
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lamc;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lamc;->j:I

    .line 116
    invoke-virtual {p0}, Lamc;->invalidateSelf()V

    .line 117
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Lamc;->b:I

    move v0, v1

    .line 226
    :goto_0
    iget-object v2, p0, Lamc;->e:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 227
    iget-object v3, p0, Lamc;->h:[I

    iget-object v2, p0, Lamc;->d:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/16 v2, 0xff

    :goto_1
    aput v2, v3, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 227
    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {p0}, Lamc;->invalidateSelf()V

    .line 230
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 262
    .line 265
    iget v0, p0, Lamc;->b:I

    packed-switch v0, :pswitch_data_0

    .line 292
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lamc;->e:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge v3, v0, :cond_5

    .line 293
    iget-object v0, p0, Lamc;->e:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iget-object v1, p0, Lamc;->h:[I

    aget v1, v1, v3

    iget v4, p0, Lamc;->i:I

    mul-int/2addr v1, v4

    div-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_0

    iget v4, p0, Lamc;->j:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lamc;->j:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v1, p0, Lamc;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lamc;->j:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lamc;->h:[I

    iget-object v4, p0, Lamc;->g:[I

    iget-object v5, p0, Lamc;->e:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lamc;->f:J

    .line 271
    iget v0, p0, Lamc;->c:I

    if-nez v0, :cond_1

    const/high16 v0, 0x3f80

    .line 273
    :goto_1
    invoke-direct {p0, v0}, Lamc;->a(F)Z

    move-result v4

    .line 274
    if-eqz v4, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lamc;->b:I

    move v2, v4

    .line 275
    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 274
    goto :goto_2

    .line 278
    :pswitch_2
    iget v0, p0, Lamc;->c:I

    if-lez v0, :cond_3

    move v0, v2

    :goto_3
    invoke-static {v0}, Ld;->b(Z)V

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lamc;->f:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    iget v4, p0, Lamc;->c:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 282
    invoke-direct {p0, v0}, Lamc;->a(F)Z

    move-result v0

    .line 283
    if-eqz v0, :cond_4

    :goto_4
    iput v1, p0, Lamc;->b:I

    move v2, v0

    .line 284
    goto :goto_0

    :cond_3
    move v0, v3

    .line 278
    goto :goto_3

    :cond_4
    move v1, v2

    .line 283
    goto :goto_4

    .line 296
    :cond_5
    if-nez v2, :cond_6

    .line 297
    invoke-virtual {p0}, Lamc;->invalidateSelf()V

    .line 299
    :cond_6
    return-void

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lamc;->i:I

    return v0
.end method

.method public final invalidateSelf()V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lamc;->j:I

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0}, Lalz;->invalidateSelf()V

    .line 102
    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 312
    iget v0, p0, Lamc;->i:I

    if-eq v0, p1, :cond_0

    .line 313
    iput p1, p0, Lamc;->i:I

    .line 314
    invoke-virtual {p0}, Lamc;->invalidateSelf()V

    .line 316
    :cond_0
    return-void
.end method
