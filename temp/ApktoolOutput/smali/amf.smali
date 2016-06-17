.class public final Lamf;
.super Lamd;
.source "OrientedDrawable.java"


# instance fields
.field private a:Landroid/graphics/Matrix;

.field private b:I

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lamf;->c:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lamf;->d:Landroid/graphics/RectF;

    .line 39
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lamf;->a:Landroid/graphics/Matrix;

    .line 41
    iput p2, p0, Lamf;->b:I

    .line 42
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lamf;->b(Landroid/graphics/Matrix;)V

    .line 89
    iget-object v0, p0, Lamf;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lamf;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 92
    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lamf;->b:I

    if-gtz v0, :cond_0

    .line 47
    invoke-super {p0, p1}, Lamd;->draw(Landroid/graphics/Canvas;)V

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 51
    iget-object v1, p0, Lamf;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 52
    invoke-super {p0, p1}, Lamd;->draw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lamf;->b:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    invoke-super {p0}, Lamd;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lamd;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lamf;->b:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    invoke-super {p0}, Lamd;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lamd;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lamf;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    iget v1, p0, Lamf;->b:I

    if-lez v1, :cond_0

    .line 70
    iget-object v1, p0, Lamf;->a:Landroid/graphics/Matrix;

    iget v2, p0, Lamf;->b:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 72
    iget-object v1, p0, Lamf;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 73
    iget-object v1, p0, Lamf;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lamf;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 74
    iget-object v1, p0, Lamf;->d:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 75
    iget-object v1, p0, Lamf;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lamf;->d:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 76
    iget-object v1, p0, Lamf;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lamf;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lamf;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lamf;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
