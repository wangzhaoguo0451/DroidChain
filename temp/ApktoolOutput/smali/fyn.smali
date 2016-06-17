.class final Lfyn;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

.field private synthetic b:Lfyi;


# direct methods
.method constructor <init>(Lfyi;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lfyn;->b:Lfyi;

    iput-object p2, p0, Lfyn;->a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lfyn;->b:Lfyi;

    iget-object v0, v0, Lfyi;->b:Ljava/util/Map;

    iget-object v1, p0, Lfyn;->a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 101
    iget-object v1, p0, Lfyn;->a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    new-instance v2, Lcom/wandoujia/launcher_base/install/InstallInfo;

    invoke-direct {v2}, Lcom/wandoujia/launcher_base/install/InstallInfo;-><init>()V

    iget-object v0, v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->b:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    sget-object v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALL_START:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALL_START:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    :goto_0
    iput-object v0, v2, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    iget-object v0, v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/wandoujia/launcher_base/install/InstallInfo;->a:Ljava/lang/String;

    iget v0, v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->c:F

    iput v0, v2, Lcom/wandoujia/launcher_base/install/InstallInfo;->c:F

    .line 102
    iget-object v0, p0, Lfyn;->b:Lfyi;

    iget-object v0, v0, Lfyi;->b:Ljava/util/Map;

    iget-object v1, p0, Lfyn;->a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdw;

    .line 104
    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v3

    .line 106
    const/4 v0, 0x0

    move v1, v0

    .line 107
    :goto_1
    invoke-virtual {v3}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lega;

    if-eqz v0, :cond_8

    .line 108
    invoke-interface {v0, v2}, Lega;->a(Lcom/wandoujia/launcher_base/install/InstallInfo;)V

    .line 109
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    .line 101
    :cond_0
    sget-object v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALLING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALL_ERROR:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALL_ERROR:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNINSTALLING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v0, v3, :cond_4

    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNINSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNINSTALLED:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNINSTALLED:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UPGRADE:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v0, v3, :cond_6

    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UPGRADE:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->UNZIPPING:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    if-ne v0, v3, :cond_7

    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNZIPPING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INIT:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    goto :goto_0

    .line 111
    :cond_8
    if-nez v1, :cond_9

    .line 112
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Lfyn;->a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lfyn;->b:Lfyi;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->b(Ljava/lang/String;Lhfq;)V

    .line 117
    :cond_9
    return-void
.end method
