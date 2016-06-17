.class final Ldeq;
.super Lhhl;
.source "DetailFragment.java"


# instance fields
.field private synthetic a:Ldep;


# direct methods
.method constructor <init>(Ldep;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Ldeq;->a:Ldep;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Ldeq;->a:Ldep;

    iget-object v0, v0, Ldep;->a:Ldeo;

    iget-object v0, v0, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldeq;->a:Ldep;

    iget-object v0, v0, Ldep;->a:Ldeo;

    iget-object v0, v0, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->r(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 542
    :cond_0
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0

    .line 544
    :cond_1
    iget-object v0, p0, Ldeq;->a:Ldep;

    invoke-virtual {v0}, Lerg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldeq;->a:Ldep;

    iget-object v1, v1, Ldep;->a:Ldeo;

    iget-object v1, v1, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->s(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldeq;->a:Ldep;

    iget-object v2, v2, Ldep;->a:Ldeo;

    iget-object v2, v2, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgdk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SHARE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v0, p0, Ldeq;->a:Ldep;

    iget-object v0, v0, Ldep;->a:Ldeo;

    iget-object v0, v0, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldeq;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 552
    const/4 v0, 0x1

    goto :goto_0
.end method
