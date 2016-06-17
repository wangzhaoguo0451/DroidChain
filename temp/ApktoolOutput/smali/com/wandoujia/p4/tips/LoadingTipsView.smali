.class public Lcom/wandoujia/p4/tips/LoadingTipsView;
.super Landroid/widget/FrameLayout;
.source "LoadingTipsView.java"


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/tips/LoadingTipsView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/tips/LoadingTipsView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/p4/tips/LoadingTipsView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/tips/LoadingTipsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 44
    invoke-direct {p0}, Lcom/wandoujia/p4/tips/LoadingTipsView;->a()V

    .line 45
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/p4/tips/LoadingTipsView;->clearAnimation()V

    .line 51
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/p4/tips/LoadingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/tips/LoadingTipsView;->a:Landroid/view/animation/Animation;

    .line 37
    iget-object v0, p0, Lcom/wandoujia/p4/tips/LoadingTipsView;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    const v0, 0x7f0c0427

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/tips/LoadingTipsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/tips/LoadingTipsView;->b:Landroid/widget/ImageView;

    .line 39
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    invoke-direct {p0}, Lcom/wandoujia/p4/tips/LoadingTipsView;->a()V

    .line 66
    return-void
.end method
