.class public final Ldfs;
.super Lhhl;
.source "HomePageFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Ldfs;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Ldfs;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->g(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldsk;

    move-result-object v0

    iget-boolean v0, v0, Ldsk;->b:Z

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Ldfs;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->g(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldsk;

    move-result-object v0

    iget-object v0, v0, Ldsk;->d:Ljava/lang/String;

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v0, p0, Ldfs;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->h(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    sget-object v1, Lham;->f:Lham;

    const-string v2, "navigation"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MANUAL_REC"

    invoke-static {v1, v0, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "wdj://search/result/"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldfs;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 342
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 345
    :cond_1
    iget-object v0, p0, Ldfs;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->h(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 346
    const/4 v0, 0x0

    goto :goto_0
.end method
