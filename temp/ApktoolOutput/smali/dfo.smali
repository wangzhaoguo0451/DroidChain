.class public final Ldfo;
.super Lhhl;
.source "HomePageFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Ldfo;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Ldfo;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget-object v1, p0, Ldfo;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;->a(Landroid/content/Context;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    .line 142
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->INPUT_BOX:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "wdj://search/history"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldfo;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 148
    const/4 v0, 0x1

    return v0
.end method
