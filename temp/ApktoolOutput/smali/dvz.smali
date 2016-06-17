.class public final Ldvz;
.super Lhhl;
.source "UpdateNotification.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/update/UpdateNotification;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Ldvz;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :sswitch_0
    iget-object v0, p0, Ldvz;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->b:Lhoj;

    invoke-virtual {v0}, Lhoj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SELF_UPGRADE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->POPUP_BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UPGRADE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Ldvz;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 72
    :goto_1
    iget-object v0, p0, Ldvz;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-static {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->a(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    .line 73
    iget-object v0, p0, Ldvz;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v0, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->EXTREME:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Ldvz;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/CommonPopupView;->b()V

    :cond_0
    move v0, v7

    .line 76
    goto :goto_0

    .line 65
    :cond_1
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SELF_UPGRADE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UPGRADE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Ldvz;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    goto :goto_1

    .line 78
    :sswitch_1
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SELF_UPGRADE:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->CLOSE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Ldvz;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 84
    iget-object v0, p0, Ldvz;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/CommonPopupView;->b()V

    move v0, v7

    .line 85
    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0002 -> :sswitch_0
        0x7f0c0012 -> :sswitch_1
    .end sparse-switch
.end method
