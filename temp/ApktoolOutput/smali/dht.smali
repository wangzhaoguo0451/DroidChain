.class public final Ldht;
.super Lert;
.source "AppUpgradeFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Ldht;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lert;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lerf;
    .locals 2
    .parameter

    .prologue
    .line 451
    new-instance v0, Lerf;

    iget-object v1, p0, Ldht;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->e(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    move-result-object v1

    invoke-direct {v0, v1}, Lerf;-><init>(Landroid/view/View;)V

    return-object v0
.end method
