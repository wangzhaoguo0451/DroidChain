.class public final Lgix;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "VideoDetailTabHostFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lgix;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lgix;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->i(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 343
    return-void
.end method

.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lgix;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 348
    iget-object v0, p0, Lgix;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->j(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 349
    return-void
.end method
