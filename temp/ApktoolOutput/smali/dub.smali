.class public final Ldub;
.super Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;
.source "PublisherCollectionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e015a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldub;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
