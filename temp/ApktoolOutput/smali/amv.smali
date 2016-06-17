.class public final Lamv;
.super Ljava/lang/Object;
.source "SettableDraweeHierarchy.java"

# interfaces
.implements Lamu;


# instance fields
.field public final a:Lamc;

.field public final b:I

.field public final c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/content/res/Resources;

.field private h:Lamr;

.field private i:Lamm;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/facebook/drawee/generic/RoundingParams;


# direct methods
.method public constructor <init>(Lams;)V
    .locals 16
    .parameter

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lamv;->e:Landroid/graphics/drawable/Drawable;

    .line 139
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lamv;->f:Landroid/graphics/drawable/Drawable;

    .line 157
    move-object/from16 v0, p1

    iget-object v1, v0, Lams;->c:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iput-object v1, v0, Lamv;->g:Landroid/content/res/Resources;

    .line 158
    move-object/from16 v0, p1

    iget-object v1, v0, Lams;->r:Lcom/facebook/drawee/generic/RoundingParams;

    move-object/from16 v0, p0

    iput-object v1, v0, Lamv;->n:Lcom/facebook/drawee/generic/RoundingParams;

    .line 160
    move-object/from16 v0, p1

    iget-object v1, v0, Lams;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lams;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 164
    :goto_0
    add-int/lit8 v3, v1, 0x0

    .line 168
    move-object/from16 v0, p1

    iget-object v2, v0, Lams;->e:Landroid/graphics/drawable/Drawable;

    .line 169
    if-nez v2, :cond_0

    .line 170
    invoke-direct/range {p0 .. p0}, Lamv;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lamv;->n:Lcom/facebook/drawee/generic/RoundingParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lamv;->g:Landroid/content/res/Resources;

    invoke-static {v4, v5, v2}, Lamv;->a(Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 176
    move-object/from16 v0, p1

    iget-object v4, v0, Lams;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v2, v4}, Lamv;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 179
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lamv;->b:I

    .line 182
    new-instance v3, Lamm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lamv;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Lamm;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lamv;->i:Lamm;

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lamv;->i:Lamm;

    .line 185
    move-object/from16 v0, p1

    iget-object v4, v0, Lams;->m:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v3, v4}, Lamv;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 189
    invoke-static {v9}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 193
    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lamv;->k:I

    .line 196
    move-object/from16 v0, p1

    iget-object v2, v0, Lams;->k:Landroid/graphics/drawable/Drawable;

    .line 197
    if-eqz v2, :cond_2

    .line 198
    move-object/from16 v0, p1

    iget-object v3, v0, Lams;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v2, v3}, Lamv;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 201
    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lamv;->j:I

    .line 207
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lams;->g:Landroid/graphics/drawable/Drawable;

    .line 208
    if-eqz v4, :cond_3

    .line 209
    move-object/from16 v0, p1

    iget-object v5, v0, Lams;->h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v4, v5}, Lamv;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 212
    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lamv;->l:I

    move-object v3, v4

    move v4, v5

    .line 218
    :goto_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lams;->i:Landroid/graphics/drawable/Drawable;

    .line 219
    if-eqz v5, :cond_4

    .line 220
    move-object/from16 v0, p1

    iget-object v6, v0, Lams;->j:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v5, v6}, Lamv;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 223
    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lamv;->c:I

    move-object v4, v5

    move v5, v6

    .line 230
    :goto_3
    move-object/from16 v0, p1

    iget-object v6, v0, Lams;->p:Ljava/util/List;

    if-eqz v6, :cond_5

    move-object/from16 v0, p1

    iget-object v6, v0, Lams;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_4
    move-object/from16 v0, p1

    iget-object v7, v0, Lams;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_5
    add-int v10, v6, v7

    .line 233
    add-int v6, v5, v10

    .line 236
    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lamv;->m:I

    .line 239
    new-array v11, v7, [Landroid/graphics/drawable/Drawable;

    .line 240
    if-lez v1, :cond_7

    .line 241
    const/4 v1, 0x0

    .line 242
    move-object/from16 v0, p1

    iget-object v6, v0, Lams;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v1

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 243
    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v6, v6, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lamv;->n:Lcom/facebook/drawee/generic/RoundingParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lamv;->g:Landroid/content/res/Resources;

    invoke-static {v13, v14, v1}, Lamv;->a(Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v11, v6

    move v6, v7

    .line 245
    goto :goto_6

    .line 160
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 203
    :cond_2
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lamv;->j:I

    move v3, v4

    goto/16 :goto_1

    .line 214
    :cond_3
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lamv;->l:I

    move-object v15, v4

    move v4, v3

    move-object v3, v15

    goto :goto_2

    .line 225
    :cond_4
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lamv;->c:I

    move-object v15, v5

    move v5, v4

    move-object v4, v15

    goto :goto_3

    .line 230
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 247
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->b:I

    if-ltz v1, :cond_8

    .line 248
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->b:I

    aput-object v8, v11, v1

    .line 250
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->k:I

    if-ltz v1, :cond_9

    .line 251
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->k:I

    aput-object v9, v11, v1

    .line 253
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->j:I

    if-ltz v1, :cond_a

    .line 254
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->j:I

    aput-object v2, v11, v1

    .line 256
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->l:I

    if-ltz v1, :cond_b

    .line 257
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->l:I

    aput-object v3, v11, v1

    .line 259
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->c:I

    if-ltz v1, :cond_c

    .line 260
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->c:I

    aput-object v4, v11, v1

    .line 262
    :cond_c
    if-lez v10, :cond_f

    .line 263
    const/4 v1, 0x0

    .line 264
    move-object/from16 v0, p1

    iget-object v2, v0, Lams;->p:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 265
    move-object/from16 v0, p1

    iget-object v2, v0, Lams;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 266
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v5

    aput-object v1, v11, v2

    move v2, v3

    .line 267
    goto :goto_7

    :cond_d
    move v2, v1

    .line 269
    :cond_e
    move-object/from16 v0, p1

    iget-object v1, v0, Lams;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 270
    add-int v1, v5, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lams;->q:Landroid/graphics/drawable/Drawable;

    aput-object v2, v11, v1

    .line 273
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->m:I

    if-ltz v1, :cond_10

    .line 274
    move-object/from16 v0, p0

    iget v1, v0, Lamv;->m:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lamv;->f:Landroid/graphics/drawable/Drawable;

    aput-object v2, v11, v1

    .line 278
    :cond_10
    new-instance v1, Lamc;

    invoke-direct {v1, v11}, Lamc;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lamv;->a:Lamc;

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lamv;->a:Lamc;

    move-object/from16 v0, p1

    iget v2, v0, Lams;->d:I

    iput v2, v1, Lamc;->c:I

    iget v2, v1, Lamc;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    const/4 v2, 0x0

    iput v2, v1, Lamc;->b:I

    .line 282
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lamv;->n:Lcom/facebook/drawee/generic/RoundingParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lamv;->a:Lamc;

    if-eqz v3, :cond_12

    iget-object v1, v3, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    sget-object v4, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-ne v1, v4, :cond_12

    new-instance v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    invoke-direct {v1, v2}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v3}, Lamv;->a(Lamg;Lcom/facebook/drawee/generic/RoundingParams;)V

    iget v2, v3, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    iput v2, v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->a:I

    invoke-virtual {v1}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    .line 286
    :goto_8
    new-instance v2, Lamr;

    invoke-direct {v2, v1}, Lamr;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lamv;->h:Lamr;

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lamv;->h:Lamr;

    invoke-virtual {v1}, Lamr;->mutate()Landroid/graphics/drawable/Drawable;

    .line 289
    invoke-direct/range {p0 .. p0}, Lamv;->e()V

    .line 290
    return-void

    :cond_12
    move-object v1, v2

    .line 282
    goto :goto_8
.end method

.method private a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 539
    iget-object v1, p0, Lamv;->a:Lamc;

    .line 540
    iget-object v0, p0, Lamv;->a:Lamc;

    iget-object v0, v0, Lalz;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 541
    instance-of v2, v0, Lame;

    if-eqz v2, :cond_2

    .line 543
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 545
    :goto_0
    instance-of v2, v1, Lamk;

    if-eqz v2, :cond_0

    .line 547
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 549
    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    if-nez p1, :cond_0

    .line 307
    :goto_0
    return-object p0

    .line 306
    :cond_0
    new-instance v0, Lamk;

    invoke-direct {v0, p0, p1}, Lamk;-><init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    move-object p0, v0

    .line 307
    goto :goto_0
.end method

.method private static a(Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-object p2

    .line 355
    :cond_1
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2

    instance-of v0, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_3

    .line 356
    :cond_2
    invoke-static {p0, p1, p2}, Lamv;->b(Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 359
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    move-object v0, p2

    .line 360
    :goto_1
    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_0

    .line 361
    instance-of v2, v0, Lamd;

    if-eqz v2, :cond_5

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_4

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_5

    .line 363
    :cond_4
    check-cast v0, Lamd;

    invoke-static {p0, p1, v1}, Lamv;->b(Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lamd;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 367
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method private a(F)V
    .locals 2
    .parameter

    .prologue
    .line 435
    iget v0, p0, Lamv;->j:I

    if-gez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 438
    :cond_0
    iget v0, p0, Lamv;->j:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lamv;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 440
    const v0, 0x3f7fbe77

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 441
    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 442
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 444
    :cond_1
    iget v0, p0, Lamv;->j:I

    invoke-direct {p0, v0}, Lamv;->c(I)V

    .line 452
    :goto_1
    const v0, 0x461c4000

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 446
    :cond_2
    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 447
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 449
    :cond_3
    iget v0, p0, Lamv;->j:I

    invoke-virtual {p0, v0}, Lamv;->a(I)V

    goto :goto_1
.end method

.method private static a(Lamg;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 325
    iget-boolean v0, p1, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    invoke-interface {p0, v0}, Lamg;->a(Z)V

    .line 326
    iget-object v0, p1, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    invoke-interface {p0, v0}, Lamg;->a([F)V

    .line 327
    iget v0, p1, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    iget v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    invoke-interface {p0, v0, v1}, Lamg;->a(IF)V

    .line 330
    return-void
.end method

.method private static b(Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 379
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, p2}, Lamh;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)Lamh;

    move-result-object p2

    .line 381
    invoke-static {p2, p0}, Lamv;->a(Lamg;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 391
    :cond_0
    :goto_0
    return-object p2

    .line 384
    :cond_1
    instance-of v0, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 386
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p2}, Lami;->a(Landroid/graphics/drawable/ColorDrawable;)Lami;

    move-result-object p2

    .line 388
    invoke-static {p2, p0}, Lamv;->a(Lamg;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 429
    if-ltz p1, :cond_0

    .line 430
    iget-object v0, p0, Lamv;->a:Lamc;

    iput v2, v0, Lamc;->b:I

    iget-object v1, v0, Lamc;->d:[Z

    aput-boolean v2, v1, p1

    invoke-virtual {v0}, Lamc;->invalidateSelf()V

    .line 432
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->a()V

    .line 404
    iget-object v0, p0, Lamv;->a:Lamc;

    const/4 v1, 0x0

    iput v1, v0, Lamc;->b:I

    iget-object v1, v0, Lamc;->d:[Z

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {v0}, Lamc;->invalidateSelf()V

    .line 406
    invoke-virtual {p0}, Lamv;->d()V

    .line 408
    iget v0, p0, Lamv;->b:I

    invoke-virtual {p0, v0}, Lamv;->a(I)V

    .line 409
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->c()V

    .line 410
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->b()V

    .line 412
    return-void
.end method

.method private f()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lamv;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lamv;->d:Landroid/graphics/drawable/Drawable;

    .line 593
    :cond_0
    iget-object v0, p0, Lamv;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lamv;->h:Lamr;

    return-object v0
.end method

.method public final a(FZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->a()V

    .line 486
    invoke-direct {p0, p1}, Lamv;->a(F)V

    .line 487
    if-eqz p2, :cond_0

    .line 488
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->c()V

    .line 490
    :cond_0
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->b()V

    .line 491
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 423
    if-ltz p1, :cond_0

    .line 424
    iget-object v0, p0, Lamv;->a:Lamc;

    const/4 v1, 0x0

    iput v1, v0, Lamc;->b:I

    iget-object v1, v0, Lamc;->d:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    invoke-virtual {v0}, Lamc;->invalidateSelf()V

    .line 426
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lamv;->n:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lamv;->g:Landroid/content/res/Resources;

    invoke-static {v0, v1, p1}, Lamv;->a(Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 472
    iget-object v1, p0, Lamv;->i:Lamm;

    invoke-virtual {v1, v0}, Lamm;->b(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->a()V

    .line 474
    invoke-virtual {p0}, Lamv;->d()V

    .line 475
    iget v0, p0, Lamv;->k:I

    invoke-virtual {p0, v0}, Lamv;->a(I)V

    .line 476
    invoke-direct {p0, p2}, Lamv;->a(F)V

    .line 477
    if-eqz p3, :cond_0

    .line 478
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->c()V

    .line 480
    :cond_0
    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->b()V

    .line 481
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lamv;->i:Lamm;

    iget-object v1, p0, Lamv;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lamm;->b(Landroid/graphics/drawable/Drawable;)V

    .line 465
    invoke-direct {p0}, Lamv;->e()V

    .line 466
    return-void
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    .line 662
    iget-object v0, p0, Lamv;->g:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lamv;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lamv;->n:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v2, p0, Lamv;->g:Landroid/content/res/Resources;

    invoke-static {v1, v2, v0}, Lamv;->a(Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lamv;->b:I

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lamv;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lamv;->a:Lamc;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lamv;->a:Lamc;

    invoke-virtual {v0, v2, v1}, Lamc;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 663
    :goto_0
    return-void

    .line 662
    :cond_1
    check-cast v0, Lamd;

    invoke-virtual {v0, v1}, Lamd;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lamv;->f:Landroid/graphics/drawable/Drawable;

    .line 522
    iget-object v1, p0, Lamv;->a:Lamc;

    iget v2, p0, Lamv;->m:I

    invoke-virtual {v1, v2, v0}, Lamc;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 523
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lamv;->b:I

    invoke-direct {p0, v0}, Lamv;->c(I)V

    .line 416
    iget v0, p0, Lamv;->k:I

    invoke-direct {p0, v0}, Lamv;->c(I)V

    .line 417
    iget v0, p0, Lamv;->j:I

    invoke-direct {p0, v0}, Lamv;->c(I)V

    .line 418
    iget v0, p0, Lamv;->l:I

    invoke-direct {p0, v0}, Lamv;->c(I)V

    .line 419
    iget v0, p0, Lamv;->c:I

    invoke-direct {p0, v0}, Lamv;->c(I)V

    .line 420
    return-void
.end method
