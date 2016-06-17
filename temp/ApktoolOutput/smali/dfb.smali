.class public final Ldfb;
.super Lhhl;
.source "DetailFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/fragment/DetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Ldfb;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Ldfb;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->k(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    .line 268
    :cond_0
    iget-object v0, p0, Ldfb;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->l(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method
