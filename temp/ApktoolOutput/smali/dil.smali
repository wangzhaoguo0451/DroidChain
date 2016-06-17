.class final Ldil;
.super Ljava/lang/Object;
.source "LibFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

.field private synthetic b:Ldij;


# direct methods
.method constructor <init>(Ldij;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Ldil;->b:Ldij;

    iput-object p2, p0, Ldil;->a:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    return-void
.end method

.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Ldil;->b:Ldij;

    iget-object v0, v0, Ldij;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->f(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbe;

    .line 442
    iget-object v2, v0, Lhbe;->e:Lhow;

    instance-of v2, v2, Lcom/wandoujia/jupiter/library/view/TransitionTab;

    if-eqz v2, :cond_0

    .line 443
    iget-object v0, v0, Lhbe;->e:Lhow;

    check-cast v0, Lcom/wandoujia/jupiter/library/view/TransitionTab;

    iget-object v2, p0, Ldil;->a:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-interface {v0, v2}, Lcom/wandoujia/jupiter/library/view/TransitionTab;->b(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V

    goto :goto_0

    .line 446
    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    return-void
.end method

.method public final onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    return-void
.end method
