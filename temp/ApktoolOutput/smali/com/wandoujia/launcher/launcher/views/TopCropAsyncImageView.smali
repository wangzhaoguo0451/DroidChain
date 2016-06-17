.class public Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "TopCropAsyncImageView.java"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->a:F

    .line 26
    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->b:F

    .line 27
    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->c:I

    .line 28
    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->d:I

    .line 29
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->e:F

    .line 41
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    sget-object v0, Lcom/wandoujia/game_launcher/lib/R$styleable;->TopCropAsyncImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->TopCropAsyncImageView_topRadius:I

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->a:F

    .line 45
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->TopCropAsyncImageView_bottomRadius:I

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->b:F

    .line 46
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->TopCropAsyncImageView_maxHeight:I

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->c:I

    .line 47
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->TopCropAsyncImageView_minHeight:I

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->d:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v0, v0

    div-float v0, v4, v0

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    :goto_0
    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->e:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v0, v0, v2, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 66
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 64
    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0, v0, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_1
.end method

.method private setImageViewSize(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 103
    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->c:I

    if-le v0, v1, :cond_0

    .line 104
    iget v0, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->c:I

    .line 106
    :cond_0
    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->d:I

    if-ge v0, v1, :cond_1

    .line 107
    iget v0, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->d:I

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 110
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    invoke-virtual {p0, v1}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Lcom/wandoujia/image/view/AsyncImageView;->onLayout(ZIIII)V

    .line 59
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->b()V

    .line 60
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->b()V

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/wandoujia/image/view/AsyncImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setImageViewSize(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v0, v0

    div-float v0, v4, v0

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v3, v0, v0, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0, v3}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->e:F

    .line 118
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 124
    invoke-virtual {v4, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 125
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 126
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v0, v8

    int-to-float v0, v0

    invoke-direct {v4, v5, v6, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->b:F

    sub-float/2addr v8, v9

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 132
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->a:F

    add-float/2addr v7, v8

    iget v8, v4, Landroid/graphics/RectF;->right:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 134
    iget v6, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->a:F

    iget v7, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->a:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 135
    iget v0, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->b:F

    iget v6, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->b:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 136
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 137
    invoke-super {p0, v1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    return-void

    :cond_0
    move v0, v1

    .line 117
    goto/16 :goto_0
.end method

.method public setScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->e:F

    .line 98
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->requestLayout()V

    .line 99
    return-void
.end method
