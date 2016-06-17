.class public final Ldkj;
.super Ljava/lang/Object;
.source "EssentialAppFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Ldkj;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    return-void
.end method

.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Ldkj;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->a(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Ldkj;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->b(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Ldkp;

    move-result-object v0

    invoke-interface {v0}, Ldkp;->a()V

    .line 258
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    return-void
.end method

.method public final onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    return-void
.end method
