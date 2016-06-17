.class public final Lame;
.super Lamd;
.source "MatrixDrawable.java"


# instance fields
.field private a:Landroid/graphics/Matrix;

.field private b:I

.field private c:I


# direct methods
.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Lame;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lame;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lame;->b:I

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lame;->c:I

    .line 104
    if-lez v2, :cond_0

    if-gtz v3, :cond_1

    .line 105
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 106
    iput-object v5, p0, Lame;->a:Landroid/graphics/Matrix;

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iput-object v5, p0, Lame;->a:Landroid/graphics/Matrix;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Lamd;->a(Landroid/graphics/Matrix;)V

    .line 120
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lame;->b:I

    invoke-virtual {p0}, Lame;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lame;->c:I

    invoke-virtual {p0}, Lame;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lame;->a()V

    .line 67
    :cond_1
    invoke-super {p0, p1}, Lamd;->draw(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lamd;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 82
    invoke-direct {p0}, Lame;->a()V

    .line 83
    return-void
.end method
