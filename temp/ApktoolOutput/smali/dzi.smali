.class public final Ldzi;
.super Ljava/lang/Object;
.source "BaseAnimationFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Ldzi;->a:Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Ldzi;->a:Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;

    iget-object v0, v0, Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;->a:Landroid/os/Handler;

    new-instance v1, Ldzk;

    invoke-direct {v1}, Ldzk;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ldzi;->a:Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;

    iget-object v0, v0, Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;->a:Landroid/os/Handler;

    new-instance v1, Ldzl;

    invoke-direct {v1}, Ldzl;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ldzi;->a:Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;

    iget-object v0, v0, Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;->a:Landroid/os/Handler;

    new-instance v1, Ldzj;

    invoke-direct {v1}, Ldzj;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method
