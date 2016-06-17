.class public final Ldki;
.super Lhhl;
.source "EssentialAppFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Ldki;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 144
    iget-object v0, p0, Ldki;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V

    .line 146
    iget-object v0, p0, Ldki;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->a(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Ldki;->a:Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->b(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Ldkp;

    move-result-object v0

    invoke-interface {v0}, Ldkp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->ENTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "wdj://essential"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldki;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    move v0, v7

    .line 155
    goto :goto_0

    .line 157
    :cond_1
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->WELCOME:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->TEXT_LINK:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->ENTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "wdj://welcome/games"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldki;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    move v0, v7

    .line 163
    goto :goto_0
.end method
