.class public final Lage;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:Z

.field private f:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 24
    iput p1, p0, Lage;->a:F

    .line 25
    iput p2, p0, Lage;->b:F

    .line 26
    iput p3, p0, Lage;->c:F

    .line 27
    iput p4, p0, Lage;->d:F

    .line 28
    iput-boolean p5, p0, Lage;->e:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x439b

    const/4 v6, 0x0

    .line 42
    iget v0, p0, Lage;->a:F

    .line 45
    iget v1, p0, Lage;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 44
    add-float/2addr v0, v1

    .line 47
    iget v1, p0, Lage;->c:F

    .line 48
    iget v2, p0, Lage;->d:F

    .line 49
    iget-object v3, p0, Lage;->f:Landroid/graphics/Camera;

    .line 51
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 53
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 54
    iget-boolean v5, p0, Lage;->e:Z

    if-eqz v5, :cond_0

    .line 55
    mul-float v5, v7, p1

    invoke-virtual {v3, v6, v6, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 59
    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 61
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 62
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 64
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 65
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 66
    return-void

    .line 57
    :cond_0
    const/high16 v5, 0x3f80

    sub-float/2addr v5, p1

    mul-float/2addr v5, v7

    invoke-virtual {v3, v6, v6, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public final initialize(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 36
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lage;->f:Landroid/graphics/Camera;

    .line 37
    return-void
.end method
