.class public final Lezx;
.super Ljava/lang/Object;
.source "ALChecker.java"

# interfaces
.implements Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final scheduleCheck(Landroid/content/Context;Lcom/wandoujia/base/services/AlarmService$Callback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->K()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 23
    const v0, 0x7f0e013a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lehv;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lfam;->a()V

    :cond_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_1
    const-string v1, "app_launcher"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v3, "check_shortcut_icon_exists"

    invoke-static {v1, v2, v3, v0}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wandoujia/p4/configs/Config;->e(J)V

    .line 25
    :cond_2
    invoke-interface {p2}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    .line 26
    return-void

    .line 22
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :pswitch_0
    const-string v0, "existed"

    goto :goto_1

    :pswitch_1
    const-string v0, "gone"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
