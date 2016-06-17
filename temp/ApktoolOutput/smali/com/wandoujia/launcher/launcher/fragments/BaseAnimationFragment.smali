.class public abstract Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;
.super Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;
.source "BaseAnimationFragment.java"


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;->a:Landroid/os/Handler;

    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public static d()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v1, v0

    .line 24
    :goto_0
    if-eqz v1, :cond_0

    .line 25
    new-instance v0, Ldzi;

    invoke-direct {v0, p0}, Ldzi;-><init>(Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 64
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
