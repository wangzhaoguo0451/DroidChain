.class public Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MaskRelativeLayout.java"


# instance fields
.field public a:F

.field public b:F

.field public c:Landroid/graphics/Paint;

.field private d:F

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->d:F

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->setWillNotDraw(Z)V

    .line 51
    sget-object v0, Lcom/wandoujia/game_launcher/lib/R$styleable;->MaskRelativeLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->MaskRelativeLayout_backgroundRadius:I

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->d:F

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->g:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->c:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->f:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->d:F

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->d:F

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->f:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->d:F

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->d:F

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 111
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->b:F

    .line 112
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->a:F

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->a:F

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->b:F

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->f:Landroid/graphics/RectF;

    .line 115
    return-void
.end method

.method public setBackgroundMaskColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->e:I

    .line 67
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->postInvalidate()V

    .line 68
    return-void
.end method
