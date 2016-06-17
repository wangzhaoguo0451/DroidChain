.class public final Lduk;
.super Ljava/lang/Object;
.source "SubscribeOnBoardFragment.java"

# interfaces
.implements Lgcj;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lduk;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgcd;)V
    .locals 4
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lduk;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->HOMEPAGE_REFRESH:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 210
    :cond_0
    return-void
.end method

.method public final b(Lgcd;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lduk;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->c(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lduk;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lduk;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->c(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public final c(Lgcd;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    return-void
.end method

.method public final d(Lgcd;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    return-void
.end method
