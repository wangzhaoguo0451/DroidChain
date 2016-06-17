.class public final Ldkm;
.super Lhhl;
.source "EssentialGameFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Ldkm;->a:Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Ldkm;->a:Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ldkm;->a:Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 105
    :cond_0
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->ENTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "wdj://essential"

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldkm;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 111
    const/4 v0, 0x1

    return v0
.end method
