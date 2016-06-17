.class public Lcom/wandoujia/p4/button/views/StatefulProgressButton;
.super Lcom/wandoujia/p4/button/views/StatefulButton;
.source "StatefulProgressButton.java"


# instance fields
.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:Z

.field private i:F

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/button/views/StatefulButton;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lfau;

    invoke-direct {v0, p0}, Lfau;-><init>(Lcom/wandoujia/p4/button/views/StatefulProgressButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->j:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/button/views/StatefulButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Lfau;

    invoke-direct {v0, p0}, Lfau;-><init>(Lcom/wandoujia/p4/button/views/StatefulProgressButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->j:Ljava/lang/Runnable;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->b:I

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->f:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->g:I

    .line 56
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/button/views/StatefulProgressButton;)F
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->i:F

    return v0
.end method

.method private a(II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->h:Z

    if-eqz v0, :cond_2

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Lcom/wandoujia/base/utils/ImageUtil;->creatBitmapSafty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    .line 117
    :cond_2
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->d:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    const-string v2, "#EEEEEE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v2, "#EEEEEE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 122
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->d:Landroid/graphics/Paint;

    .line 123
    iget-object v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->d:Landroid/graphics/Paint;

    const-string v3, "#EEEEEE"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 125
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->d:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 128
    iget v1, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->g:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->d:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public setProgress(F)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 64
    iput p1, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->i:F

    .line 65
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Ld;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 79
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->getWidth()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->getHeight()I

    move-result v1

    .line 72
    if-lez v0, :cond_5

    if-lez v1, :cond_5

    .line 73
    cmpg-float v2, p1, p1

    if-ltz v2, :cond_1

    cmpl-float v2, p1, v5

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->a(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->h:Z

    :cond_2
    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->c:Landroid/graphics/Paint;

    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->c:Landroid/graphics/Paint;

    iget v4, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->b:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, v1

    invoke-direct {v3, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->g:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    .line 74
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 75
    invoke-static {p0, v1}, Ld;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 73
    :cond_4
    int-to-float v2, v0

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->g:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->h:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->a(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->e:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->h:Z

    goto :goto_1

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public setState(Lfaq;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Ld;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-super {p0, p1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    .line 136
    return-void
.end method
