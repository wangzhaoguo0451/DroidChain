.class final Ldfx;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Ldfw;


# direct methods
.method constructor <init>(Ldfw;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Ldfx;->a:Ldfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 3
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Ldfx;->a:Ldfw;

    iget-object v0, v0, Ldfw;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Ldfx;->a:Ldfw;

    iget-object v0, v0, Ldfw;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Ldfx;->a:Ldfw;

    iget-object v2, v2, Ldfw;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v2

    invoke-interface {v2}, Ldgb;->b_()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ldgb;->a(I)V

    goto :goto_0
.end method
