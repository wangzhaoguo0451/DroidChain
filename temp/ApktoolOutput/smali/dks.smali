.class public final Ldks;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/onboard/SplashFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Ldks;->a:Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Ldks;->a:Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->c(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V

    .line 189
    return-void
.end method

.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Ldks;->a:Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->c(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V

    .line 184
    return-void
.end method

.method public final onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    return-void
.end method

.method public final onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    return-void
.end method
