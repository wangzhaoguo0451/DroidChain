.class final Ldcy;
.super Ljava/lang/Object;
.source "JupiterItemAnimator.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:I

.field private synthetic c:F

.field private synthetic d:Ldda;

.field private synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IFLdda;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Ldcy;->a:Landroid/view/View;

    iput p2, p0, Ldcy;->b:I

    iput p3, p0, Ldcy;->c:F

    iput-object p4, p0, Ldcy;->d:Ldda;

    iput-object p5, p0, Ldcy;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0xc

    const v8, 0x466a6000

    const/high16 v7, 0x4334

    const/high16 v6, 0x3f80

    .line 426
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 429
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 430
    invoke-static {v9}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Ldcy;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setCameraDistance(F)V

    .line 433
    :cond_0
    iget-object v1, p0, Ldcy;->a:Landroid/view/View;

    mul-float v2, v0, v7

    iget v3, p0, Ldcy;->b:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setRotationY(Landroid/view/View;F)V

    .line 434
    iget-object v1, p0, Ldcy;->a:Landroid/view/View;

    iget v2, p0, Ldcy;->c:F

    sub-float/2addr v2, v6

    mul-float/2addr v2, v0

    add-float/2addr v2, v6

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 435
    iget-object v1, p0, Ldcy;->a:Landroid/view/View;

    iget-object v2, p0, Ldcy;->d:Ldda;

    iget v2, v2, Ldda;->f:I

    iget-object v3, p0, Ldcy;->d:Ldda;

    iget v3, v3, Ldda;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lgs;->b(Landroid/view/View;F)V

    .line 446
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-static {v9}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Ldcy;->e:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setCameraDistance(F)V

    .line 440
    :cond_2
    iget-object v1, p0, Ldcy;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 441
    iget-object v1, p0, Ldcy;->e:Landroid/view/View;

    invoke-static {v1, v6}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 442
    iget-object v1, p0, Ldcy;->e:Landroid/view/View;

    sub-float v2, v0, v6

    mul-float/2addr v2, v7

    iget v3, p0, Ldcy;->b:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setRotationY(Landroid/view/View;F)V

    .line 443
    iget-object v1, p0, Ldcy;->e:Landroid/view/View;

    iget v2, p0, Ldcy;->c:F

    sub-float/2addr v2, v6

    mul-float/2addr v2, v0

    add-float/2addr v2, v6

    iget v3, p0, Ldcy;->c:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 444
    iget-object v1, p0, Ldcy;->e:Landroid/view/View;

    iget-object v2, p0, Ldcy;->d:Ldda;

    iget v2, v2, Ldda;->d:I

    iget-object v3, p0, Ldcy;->d:Ldda;

    iget v3, v3, Ldda;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v0, v6, v0

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lgs;->b(Landroid/view/View;F)V

    goto :goto_0
.end method
