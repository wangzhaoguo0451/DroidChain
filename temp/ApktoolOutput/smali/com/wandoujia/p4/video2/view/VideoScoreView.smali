.class public Lcom/wandoujia/p4/video2/view/VideoScoreView;
.super Landroid/view/View;
.source "VideoScoreView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02032c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02032d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02032b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->f:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    const/4 v0, 0x0

    .line 69
    :goto_0
    iget v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->a:I

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 71
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 72
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    :goto_1
    iget v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->a:I

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 76
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 77
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->f:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1
    :goto_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 81
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 82
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 84
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/view/VideoScoreView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->i:Landroid/graphics/Rect;

    iget v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->h:I

    iget v2, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->g:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 63
    return-void
.end method

.method public setScore(F)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 51
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->a:I

    .line 52
    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wandoujia/p4/video2/view/VideoScoreView;->b:I

    .line 53
    return-void
.end method
