.class public final Ldfe;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:F

.field private synthetic c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private synthetic d:I

.field private synthetic e:I

.field private synthetic f:F

.field private synthetic g:F


# direct methods
.method public constructor <init>(Landroid/view/View;FLcom/facebook/drawee/view/SimpleDraweeView;IIFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Ldfe;->a:Landroid/view/View;

    iput p2, p0, Ldfe;->b:F

    iput-object p3, p0, Ldfe;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iput p4, p0, Ldfe;->d:I

    iput p5, p0, Ldfe;->e:I

    iput p6, p0, Ldfe;->f:F

    iput p7, p0, Ldfe;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 414
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 415
    iget-object v1, p0, Ldfe;->a:Landroid/view/View;

    iget v2, p0, Ldfe;->b:F

    iget v3, p0, Ldfe;->b:F

    sub-float v3, v4, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 417
    iget-object v1, p0, Ldfe;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget v2, p0, Ldfe;->d:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 418
    iget-object v1, p0, Ldfe;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget v2, p0, Ldfe;->e:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 419
    iget-object v1, p0, Ldfe;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget v2, p0, Ldfe;->f:F

    sub-float v2, v4, v2

    mul-float/2addr v2, v0

    iget v3, p0, Ldfe;->f:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 420
    iget-object v1, p0, Ldfe;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget v2, p0, Ldfe;->g:F

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    iget v2, p0, Ldfe;->g:F

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 421
    return-void
.end method
