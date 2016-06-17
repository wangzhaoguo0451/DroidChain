.class public final Ldwu;
.super Lhhl;
.source "AutoInstallCardView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/view/AutoInstallCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/view/AutoInstallCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Ldwu;->a:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Ldwu;->a:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->a(Lcom/wandoujia/jupiter/view/AutoInstallCardView;)V

    .line 71
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->w()V

    .line 73
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->CLOSE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "auto_install_card"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldwu;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 79
    const/4 v0, 0x1

    return v0
.end method
