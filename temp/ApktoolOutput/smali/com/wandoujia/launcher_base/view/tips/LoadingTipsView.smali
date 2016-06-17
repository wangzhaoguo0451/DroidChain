.class public Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;
.super Landroid/widget/FrameLayout;
.source "LoadingTipsView.java"


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 43
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->a()V

    .line 44
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 49
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->clearAnimation()V

    .line 50
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$anim;->cycle_rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->a:Landroid/view/animation/Animation;

    .line 36
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    sget v0, Lcom/wandoujia/launcher_base/R$id;->loading_imageview:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->b:Landroid/widget/ImageView;

    .line 38
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/view/tips/LoadingTipsView;->a()V

    .line 65
    return-void
.end method
