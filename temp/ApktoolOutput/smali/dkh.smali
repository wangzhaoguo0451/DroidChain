.class public final Ldkh;
.super Lhhl;
.source "EssentialAppFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 98
    iget-object v0, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->a(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->b(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Ldkp;

    move-result-object v0

    invoke-interface {v0}, Ldkp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->f(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->a(Ljava/util/List;)V

    iget-object v0, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->ENTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "wdj://essential"

    iget-object v0, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->g(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->b(Ljava/util/List;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldkh;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    move v0, v7

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    :try_start_0
    iget-object v0, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    iget-object v1, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->c(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Leqw;

    move-result-object v1

    invoke-virtual {v1}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->ENTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "wdj://welcome/games"

    iget-object v0, p0, Ldkh;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->e(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->b(Ljava/util/List;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldkh;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    move v0, v7

    .line 105
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
