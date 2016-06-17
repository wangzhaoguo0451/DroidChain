.class final Ldik;
.super Ljava/lang/Object;
.source "LibFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

.field private synthetic b:Ldij;


# direct methods
.method constructor <init>(Ldij;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Ldik;->b:Ldij;

    iput-object p2, p0, Ldik;->a:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 5
    .parameter

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 422
    iget-object v0, p0, Ldik;->b:Ldij;

    iget-object v0, v0, Ldij;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->d(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    move-result-object v2

    sget-object v0, Lcom/wandoujia/jupiter/library/view/TransitionTab;->a:Lcom/nineoldandroids/animation/ArgbEvaluator;

    iget-object v3, p0, Ldik;->b:Ldij;

    invoke-static {v3}, Ldij;->a(Ldij;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Ldik;->a:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-virtual {v4}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getBgColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/nineoldandroids/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setBackgroundColor(I)V

    .line 425
    iget-object v0, p0, Ldik;->b:Ldij;

    iget-object v0, v0, Ldij;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->e(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    move-result-object v2

    sget-object v0, Lcom/wandoujia/jupiter/library/view/TransitionTab;->a:Lcom/nineoldandroids/animation/ArgbEvaluator;

    iget-object v3, p0, Ldik;->b:Ldij;

    invoke-static {v3}, Ldij;->b(Ldij;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Ldik;->a:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-virtual {v4}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getIndicatorColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/nineoldandroids/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 428
    iget-object v0, p0, Ldik;->b:Ldij;

    iget-object v0, v0, Ldij;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->f(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbe;

    .line 429
    iget-object v3, v0, Lhbe;->e:Lhow;

    instance-of v3, v3, Lcom/wandoujia/jupiter/library/view/TransitionTab;

    if-eqz v3, :cond_0

    .line 430
    iget-object v0, v0, Lhbe;->e:Lhow;

    check-cast v0, Lcom/wandoujia/jupiter/library/view/TransitionTab;

    iget-object v3, p0, Ldik;->a:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-interface {v0, v3, v1}, Lcom/wandoujia/jupiter/library/view/TransitionTab;->a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;F)V

    goto :goto_0

    .line 433
    :cond_1
    return-void
.end method
