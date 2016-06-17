.class public Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;
.super Landroid/view/View;
.source "StatefulIcon.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->DOWNLOADING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->l:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    .line 52
    sget-object v0, Lcom/wandoujia/launcher_base/R$styleable;->StatefulIconStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->StatefulIconStyle_outer_radius:I

    const/high16 v2, 0x4190

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Ld;->a(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->a:I

    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->StatefulIconStyle_inner_radius:I

    const/high16 v2, 0x4140

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Ld;->a(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->b:I

    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->StatefulIconStyle_outer_color:I

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wandoujia/launcher_base/R$color;->green_progress:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->d:I

    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->StatefulIconStyle_inner_color:I

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wandoujia/launcher_base/R$color;->green_primary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->e:I

    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->StatefulIconStyle_background_color:I

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wandoujia/launcher_base/R$color;->pure_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->f:I

    sget v1, Lcom/wandoujia/launcher_base/R$styleable;->StatefulIconStyle_angle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->c:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$drawable;->stateful_icon_start:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$drawable;->stateful_icon_pause:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->k:Landroid/graphics/Bitmap;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 101
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 104
    int-to-float v0, v6

    int-to-float v1, v7

    iget v2, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->a:I

    sub-int v0, v6, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->a:I

    sub-int v2, v7, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->a:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->a:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c

    iget v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->c:I

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 108
    int-to-float v0, v6

    int-to-float v1, v7

    iget v2, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->l:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;->PAUSING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v7, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->k:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v7, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setIconState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->l:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon$IconState;

    .line 93
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->invalidate()V

    .line 94
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter

    .prologue
    .line 87
    mul-int/lit16 v0, p1, 0x168

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->c:I

    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulIcon;->invalidate()V

    .line 89
    return-void
.end method
