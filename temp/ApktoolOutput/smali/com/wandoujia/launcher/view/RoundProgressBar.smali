.class public Lcom/wandoujia/launcher/view/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/view/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    .line 38
    sget-object v0, Lcom/wandoujia/game_launcher/lib/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->RoundProgressBar_roundColor:I

    const v2, -0x777778

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->b:I

    .line 40
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->RoundProgressBar_roundProgressColor:I

    const v2, -0xff0100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->c:I

    .line 42
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->RoundProgressBar_roundWidth:I

    const/high16 v2, 0x40a0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->d:F

    .line 43
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->RoundProgressBar_max:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->e:I

    .line 44
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->RoundProgressBar_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->f:I

    .line 45
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->RoundProgressBar_startAngle:I

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->g:I

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/launcher/view/RoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 54
    int-to-float v1, v0

    iget v2, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->d:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v2, v1

    .line 55
    iget-object v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->b:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->d:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    int-to-float v1, v0

    int-to-float v3, v0

    int-to-float v4, v2

    iget-object v5, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    iget-object v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->d:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->c:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    new-instance v1, Landroid/graphics/RectF;

    sub-int v3, v0, v2

    int-to-float v3, v3

    sub-int v4, v0, v2

    int-to-float v4, v4

    add-int v5, v0, v2

    int-to-float v5, v5

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    iget v0, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->f:I

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->g:I

    int-to-float v2, v0

    iget v0, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->f:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->e:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .parameter

    .prologue
    .line 73
    if-gez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget v0, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->e:I

    if-le p1, v0, :cond_1

    .line 77
    iget p1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->e:I

    .line 79
    :cond_1
    iget v0, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->e:I

    if-gt p1, v0, :cond_2

    .line 80
    iput p1, p0, Lcom/wandoujia/launcher/view/RoundProgressBar;->f:I

    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/launcher/view/RoundProgressBar;->postInvalidate()V

    .line 83
    :cond_2
    return-void
.end method
