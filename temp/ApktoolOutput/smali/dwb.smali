.class public final Ldwb;
.super Ljava/lang/Object;
.source "UpdateNotification.java"

# interfaces
.implements Lbtk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nispok/snackbar/Snackbar;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 164
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SELF_UPGRADE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->FOOTER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->CLOSE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    .line 173
    return-void
.end method
