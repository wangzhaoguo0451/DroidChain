.class public Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


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

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a:I

    .line 33
    const/16 v0, -0x5a

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->b:I

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->g:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->h:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->i:Landroid/graphics/Paint;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a:I

    .line 33
    const/16 v0, -0x5a

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->b:I

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->g:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->h:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->i:Landroid/graphics/Paint;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 72
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a:I

    .line 76
    const/4 v1, 0x2

    const/16 v2, -0x5a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->b:I

    .line 77
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->c:I

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->d:I

    .line 79
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->e:I

    .line 80
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->f:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->j:I

    div-int/lit8 v0, v1, 0x2

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->k:I

    div-int/lit8 v0, v2, 0x2

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->l:I

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->j:I

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->m:I

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->j:I

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->n:I

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->k:I

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->o:I

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->k:I

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->p:I

    .line 102
    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->l:I

    iget v3, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->f:I

    int-to-float v0, v0

    const v1, 0x40666666

    mul-float v3, v0, v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->m:I

    int-to-float v0, v0

    iget v2, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->o:I

    int-to-float v2, v2

    iget v4, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->n:I

    int-to-float v4, v4

    iget v5, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->p:I

    int-to-float v5, v5

    invoke-direct {v1, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->b:I

    int-to-float v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->b:I

    int-to-float v0, v0

    add-float v2, v0, v3

    const/high16 v0, 0x43b4

    sub-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->m:I

    int-to-float v5, v0

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->o:I

    int-to-float v6, v0

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->n:I

    int-to-float v7, v0

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->p:I

    int-to-float v8, v0

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->b:I

    int-to-float v9, v0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->g:Landroid/graphics/Paint;

    move-object v4, p1

    move v10, v3

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->m:I

    int-to-float v1, v0

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->o:I

    int-to-float v2, v0

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->n:I

    int-to-float v9, v0

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->p:I

    int-to-float v4, v0

    iget v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->b:I

    int-to-float v0, v0

    add-float v5, v0, v3

    const/high16 v0, 0x43b4

    sub-float v6, v0, v3

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setBgColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->e:I

    .line 136
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->invalidate()V

    .line 137
    return-void
.end method

.method public setEdgeCircleSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput p1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->a:I

    .line 116
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->invalidate()V

    .line 117
    return-void
.end method

.method public setOriginDegree(I)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput p1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->b:I

    .line 121
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->invalidate()V

    .line 122
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->c:I

    .line 126
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->invalidate()V

    .line 127
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .parameter

    .prologue
    .line 107
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress must between 0 and 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    iput p1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->f:I

    .line 111
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->invalidate()V

    .line 112
    return-void
.end method

.method public setSecondColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->d:I

    .line 131
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;->invalidate()V

    .line 132
    return-void
.end method
