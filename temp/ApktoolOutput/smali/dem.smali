.class public final Ldem;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/fragment/DetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Ldem;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .parameter

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 431
    iget-object v1, p0, Ldem;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->k(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 433
    return-void
.end method
