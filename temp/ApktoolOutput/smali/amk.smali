.class public final Lamk;
.super Lamd;
.source "ScaleTypeDrawable.java"


# instance fields
.field private a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Matrix;

.field private e:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lamd;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iput v1, p0, Lamk;->b:I

    .line 37
    iput v1, p0, Lamk;->c:I

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lamk;->e:Landroid/graphics/Matrix;

    .line 52
    iput-object p2, p0, Lamk;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 53
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lamk;->b:I

    invoke-virtual {p0}, Lamk;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lamk;->c:I

    invoke-virtual {p0}, Lamk;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 120
    :cond_0
    invoke-direct {p0}, Lamk;->b()V

    .line 122
    :cond_1
    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/high16 v11, 0x3f00

    .line 129
    invoke-virtual {p0}, Lamk;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lamk;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 132
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 133
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lamk;->b:I

    .line 134
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lamk;->c:I

    .line 137
    if-lez v4, :cond_0

    if-gtz v5, :cond_1

    .line 138
    :cond_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 139
    iput-object v6, p0, Lamk;->d:Landroid/graphics/Matrix;

    .line 169
    :goto_0
    return-void

    .line 144
    :cond_1
    if-ne v4, v1, :cond_2

    if-ne v5, v3, :cond_2

    .line 145
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 146
    iput-object v6, p0, Lamk;->d:Landroid/graphics/Matrix;

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lamk;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sget-object v3, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-ne v1, v3, :cond_3

    .line 153
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 154
    iput-object v6, p0, Lamk;->d:Landroid/graphics/Matrix;

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v3, p0, Lamk;->e:Landroid/graphics/Matrix;

    iget-object v6, p0, Lamk;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v0, v7

    int-to-float v1, v4

    div-float v1, v0, v1

    int-to-float v0, v8

    int-to-float v9, v5

    div-float/2addr v0, v9

    sget-object v9, Laml;->a:[I

    invoke-virtual {v6}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported scale type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v0, v4, v11

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v11

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 168
    :goto_1
    iget-object v0, p0, Lamk;->e:Landroid/graphics/Matrix;

    iput-object v0, p0, Lamk;->d:Landroid/graphics/Matrix;

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v0, v1, v11

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v11

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :pswitch_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v6, v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v4, v6, v4

    mul-float/2addr v4, v11

    add-float/2addr v1, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v4, v8

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v11

    add-float/2addr v2, v4

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v0, v1, v11

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v11

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :pswitch_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v6, v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v4, v6, v4

    add-float/2addr v1, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v4, v8

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v0, v1, v11

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v11

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :pswitch_4
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-int v1, v7, v4

    int-to-float v1, v1

    mul-float/2addr v1, v11

    add-float/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-int v2, v8, v5

    int-to-float v2, v2

    mul-float/2addr v2, v11

    add-float/2addr v1, v2

    add-float/2addr v0, v11

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_1

    :pswitch_5
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v6, v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v4, v6, v4

    mul-float/2addr v4, v11

    add-float/2addr v1, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v4, v8

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v11

    add-float/2addr v2, v4

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v0, v1, v11

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v11

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    :pswitch_6
    cmpl-float v6, v0, v1

    if-lez v6, :cond_4

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v5, v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v4, v5, v4

    mul-float/2addr v4, v11

    add-float/2addr v1, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    :goto_2
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v0, v1, v11

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v11

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    :cond_4
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v4, v8

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    mul-float/2addr v4, v11

    add-float/2addr v2, v4

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_2

    :pswitch_7
    cmpl-float v6, v0, v1

    if-lez v6, :cond_5

    int-to-float v1, v7

    mul-float/2addr v1, v11

    int-to-float v5, v4

    mul-float/2addr v5, v0

    mul-float/2addr v5, v11

    sub-float/2addr v1, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v6, v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v4, v6, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    :goto_3
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v0, v1, v11

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v11

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    :cond_5
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v4, v8

    mul-float/2addr v4, v11

    int-to-float v6, v5

    mul-float/2addr v6, v1

    mul-float/2addr v6, v11

    sub-float/2addr v4, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v6, v8

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float v5, v6, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v2, v4

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lamk;->b(Landroid/graphics/Matrix;)V

    .line 180
    invoke-direct {p0}, Lamk;->a()V

    .line 181
    iget-object v0, p0, Lamk;->d:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lamk;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 184
    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lamk;->a()V

    .line 100
    iget-object v0, p0, Lamk;->d:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lamk;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 103
    iget-object v1, p0, Lamk;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 104
    invoke-super {p0, p1}, Lamd;->draw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lamd;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lamk;->b()V

    .line 115
    return-void
.end method
