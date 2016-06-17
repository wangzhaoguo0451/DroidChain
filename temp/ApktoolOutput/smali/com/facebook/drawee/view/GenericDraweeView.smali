.class public Lcom/facebook/drawee/view/GenericDraweeView;
.super Lcom/facebook/drawee/view/DraweeView;
.source "GenericDraweeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/view/DraweeView",
        "<",
        "Lamv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Lamx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    .line 61
    new-instance v0, Lamx;

    invoke-direct {v0}, Lamx;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lamv;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    .line 61
    new-instance v0, Lamx;

    invoke-direct {v0}, Lamx;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    .line 65
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->setHierarchy(Lamu;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    .line 61
    new-instance v0, Lamx;

    invoke-direct {v0}, Lamx;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    .line 61
    new-instance v0, Lamx;

    invoke-direct {v0}, Lamx;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->fromString(Ljava/lang/String;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 28
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 87
    const/16 v24, 0x12c

    .line 89
    const/16 v23, 0x0

    .line 90
    sget-object v22, Lams;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 92
    const/16 v21, 0x0

    .line 93
    sget-object v20, Lams;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 95
    const/16 v19, 0x0

    .line 96
    sget-object v18, Lams;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 98
    const/16 v17, 0x0

    .line 99
    sget-object v16, Lams;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 101
    sget-object v15, Lams;->b:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 103
    const/4 v14, 0x0

    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v12, 0x0

    .line 107
    const/4 v11, 0x0

    .line 108
    const/4 v10, 0x0

    .line 109
    const/4 v9, 0x1

    .line 110
    const/4 v8, 0x1

    .line 111
    const/4 v7, 0x1

    .line 112
    const/4 v6, 0x1

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v3, 0x0

    .line 116
    const/4 v2, 0x0

    .line 119
    if-eqz p2, :cond_0

    .line 120
    sget-object v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v26

    .line 125
    :try_start_0
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_fadeDuration:I

    const/16 v3, 0x12c

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 130
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_viewAspectRatio:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    .line 135
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_placeholderImage:I

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    .line 139
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_placeholderImageScaleType:I

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-static {v0, v2, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v22

    .line 145
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_retryImage:I

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    .line 149
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_retryImageScaleType:I

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v20

    .line 155
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_failureImage:I

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 159
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_failureImageScaleType:I

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v18

    .line 165
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_progressBarImage:I

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 169
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_progressBarImageScaleType:I

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v16

    .line 174
    sget v2, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_progressBarAutoRotateInterval:I

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 179
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_actualImageScaleType:I

    move-object/from16 v0, v26

    invoke-static {v0, v3, v15}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v15

    .line 185
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_backgroundImage:I

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 190
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_overlayImage:I

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 195
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_pressedStateOverlayImage:I

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 200
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundAsCircle:I

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 203
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundedCornerRadius:I

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 206
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundTopLeft:I

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 209
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundTopRight:I

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 212
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundBottomRight:I

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 215
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundBottomLeft:I

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 218
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundWithOverlayColor:I

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 221
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundingBorderWidth:I

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 224
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeView_roundingBorderColor:I

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 229
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    :cond_0
    new-instance v26, Lams;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lams;-><init>(Landroid/content/res/Resources;)V

    .line 235
    move/from16 v0, v24

    move-object/from16 v1, v26

    iput v0, v1, Lams;->d:I

    .line 237
    if-lez v23, :cond_1

    .line 238
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lams;->e:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    iput-object v0, v1, Lams;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 240
    :cond_1
    if-lez v21, :cond_2

    .line 241
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    iput-object v0, v1, Lams;->g:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    iput-object v0, v1, Lams;->h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 243
    :cond_2
    if-lez v19, :cond_3

    .line 244
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lams;->i:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Lams;->j:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 246
    :cond_3
    if-lez v17, :cond_4

    .line 247
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 248
    if-lez v2, :cond_13

    .line 249
    new-instance v17, Lama;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lama;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object/from16 v2, v17

    .line 252
    :goto_0
    move-object/from16 v0, v26

    iput-object v2, v0, Lams;->k:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    iput-object v0, v1, Lams;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 254
    :cond_4
    if-lez v14, :cond_5

    .line 255
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x0

    aput-object v2, v14, v16

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lams;->o:Ljava/util/List;

    .line 257
    :cond_5
    if-lez v13, :cond_6

    .line 258
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lams;->p:Ljava/util/List;

    .line 260
    :cond_6
    if-lez v12, :cond_7

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/view/GenericDraweeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v16, 0x10100a7

    aput v16, v13, v14

    invoke-virtual {v12, v13, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v26

    iput-object v12, v0, Lams;->q:Landroid/graphics/drawable/Drawable;

    .line 264
    :cond_7
    move-object/from16 v0, v26

    iput-object v15, v0, Lams;->m:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput-object v2, v0, Lams;->n:Landroid/graphics/Matrix;

    .line 266
    if-nez v11, :cond_8

    if-lez v10, :cond_d

    .line 267
    :cond_8
    new-instance v12, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v12}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 268
    iput-boolean v11, v12, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    .line 269
    if-lez v10, :cond_a

    .line 270
    if-eqz v9, :cond_e

    int-to-float v2, v10

    move v9, v2

    :goto_1
    if-eqz v8, :cond_f

    int-to-float v2, v10

    move v8, v2

    :goto_2
    if-eqz v7, :cond_10

    int-to-float v2, v10

    move v7, v2

    :goto_3
    if-eqz v6, :cond_11

    int-to-float v2, v10

    :goto_4
    iget-object v6, v12, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    if-nez v6, :cond_9

    const/16 v6, 0x8

    new-array v6, v6, [F

    iput-object v6, v12, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    :cond_9
    iget-object v6, v12, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v9, v6, v11

    aput v9, v6, v10

    const/4 v9, 0x2

    const/4 v10, 0x3

    aput v8, v6, v10

    aput v8, v6, v9

    const/4 v8, 0x4

    const/4 v9, 0x5

    aput v7, v6, v9

    aput v7, v6, v8

    const/4 v7, 0x6

    const/4 v8, 0x7

    aput v2, v6, v8

    aput v2, v6, v7

    .line 276
    :cond_a
    if-eqz v5, :cond_b

    .line 277
    iput v5, v12, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    sget-object v2, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object v2, v12, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 279
    :cond_b
    if-eqz v3, :cond_c

    if-lez v4, :cond_c

    .line 280
    int-to-float v4, v4

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_12

    const/4 v2, 0x1

    :goto_5
    const-string v5, "the border width cannot be < 0"

    invoke-static {v2, v5}, Ld;->a(ZLjava/lang/Object;)V

    iput v4, v12, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    iput v3, v12, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    .line 282
    :cond_c
    move-object/from16 v0, v26

    iput-object v12, v0, Lams;->r:Lcom/facebook/drawee/generic/RoundingParams;

    .line 284
    :cond_d
    invoke-virtual/range {v26 .. v26}, Lams;->a()Lamv;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/GenericDraweeView;->setHierarchy(Lamu;)V

    .line 285
    return-void

    .line 229
    :catchall_0
    move-exception v2

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 270
    :cond_e
    const/4 v2, 0x0

    move v9, v2

    goto :goto_1

    :cond_f
    const/4 v2, 0x0

    move v8, v2

    goto :goto_2

    :cond_10
    const/4 v2, 0x0

    move v7, v2

    goto :goto_3

    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    .line 280
    :cond_12
    const/4 v2, 0x0

    goto :goto_5

    :cond_13
    move-object/from16 v2, v18

    goto/16 :goto_0
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 318
    iget-object v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    iput p1, v0, Lamx;->a:I

    .line 319
    iget-object v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    iput p2, v0, Lamx;->b:I

    .line 320
    iget-object v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    iget v1, p0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    invoke-virtual {p0}, Lcom/facebook/drawee/view/GenericDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/drawee/view/GenericDraweeView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/drawee/view/GenericDraweeView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/facebook/drawee/view/GenericDraweeView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/drawee/view/GenericDraweeView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-lez v5, :cond_0

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5}, Ld;->b(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v2, v0, Lamx;->a:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v1, v2, v1

    int-to-float v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Lamx;->b:I

    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lamx;->b:I

    .line 326
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    iget v0, v0, Lamx;->a:I

    iget-object v1, p0, Lcom/facebook/drawee/view/GenericDraweeView;->b:Lamx;

    iget v1, v1, Lamx;->b:I

    invoke-super {p0, v0, v1}, Lcom/facebook/drawee/view/DraweeView;->onMeasure(II)V

    .line 327
    return-void

    .line 320
    :cond_1
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2}, Ld;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lamx;->b:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Lamx;->a:I

    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lamx;->a:I

    goto :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 1
    .parameter

    .prologue
    .line 302
    iget v0, p0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iput p1, p0, Lcom/facebook/drawee/view/GenericDraweeView;->a:F

    .line 306
    invoke-virtual {p0}, Lcom/facebook/drawee/view/GenericDraweeView;->requestLayout()V

    goto :goto_0
.end method
