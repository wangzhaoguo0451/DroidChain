.class final Ldcz;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "JupiterItemAnimator.java"


# instance fields
.field private synthetic a:Ldda;

.field private synthetic b:Landroid/view/View;

.field private synthetic c:Landroid/view/View;

.field private synthetic d:Lcom/nineoldandroids/animation/ValueAnimator;

.field private synthetic e:Ldcr;


# direct methods
.method constructor <init>(Ldcr;Ldda;Landroid/view/View;Landroid/view/View;Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Ldcz;->e:Ldcr;

    iput-object p2, p0, Ldcz;->a:Ldda;

    iput-object p3, p0, Ldcz;->b:Landroid/view/View;

    iput-object p4, p0, Ldcz;->c:Landroid/view/View;

    iput-object p5, p0, Ldcz;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Ldcz;->e:Ldcr;

    iget-object v0, v0, Ldcr;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Ldcz;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V

    .line 486
    return-void
.end method

.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 464
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Ldcz;->b:Landroid/view/View;

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 466
    iget-object v0, p0, Ldcz;->c:Landroid/view/View;

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 468
    :cond_0
    iget-object v0, p0, Ldcz;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 469
    iget-object v0, p0, Ldcz;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->removeAllListeners()V

    .line 470
    iget-object v0, p0, Ldcz;->b:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 471
    iget-object v0, p0, Ldcz;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setRotationY(Landroid/view/View;F)V

    .line 472
    iget-object v0, p0, Ldcz;->b:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 473
    iget-object v0, p0, Ldcz;->b:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 474
    iget-object v0, p0, Ldcz;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lgs;->b(Landroid/view/View;F)V

    .line 475
    iget-object v0, p0, Ldcz;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lgs;->b(Landroid/view/View;F)V

    .line 476
    iget-object v0, p0, Ldcz;->e:Ldcr;

    iget-object v1, p0, Ldcz;->a:Ldda;

    iget-object v1, v1, Ldda;->a:Lux;

    invoke-virtual {v0, v1}, Ldcr;->g(Lux;)V

    .line 477
    iget-object v0, p0, Ldcz;->e:Ldcr;

    iget-object v1, p0, Ldcz;->a:Ldda;

    iget-object v1, v1, Ldda;->b:Lux;

    invoke-virtual {v0, v1}, Ldcr;->g(Lux;)V

    .line 478
    iget-object v0, p0, Ldcz;->e:Ldcr;

    iget-object v0, v0, Ldcr;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Ldcz;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Ldcz;->e:Ldcr;

    invoke-virtual {v0}, Ldcr;->c()V

    .line 480
    return-void
.end method

.method public final onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Ldcz;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 457
    iget-object v0, p0, Ldcz;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 458
    iget-object v0, p0, Ldcz;->b:Landroid/view/View;

    iget-object v1, p0, Ldcz;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 459
    iget-object v0, p0, Ldcz;->c:Landroid/view/View;

    iget-object v1, p0, Ldcz;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 460
    return-void
.end method
