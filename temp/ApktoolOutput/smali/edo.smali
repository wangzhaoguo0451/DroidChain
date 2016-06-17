.class final Ledo;
.super Ljava/lang/Object;
.source "LauncherIconUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leds;


# direct methods
.method constructor <init>(Leds;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Ledo;->a:Leds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 84
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ledn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-static {v1}, Lehv;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lg;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-static {v1}, Ledn;->a(Ljava/lang/String;)Z

    move-result v0

    .line 89
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v4, "game_launcher"

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v7, "create_shortcut_icon"

    invoke-static {v4, v5, v6, v7}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v4

    const-string v5, "game_launcher_shortcut_created"

    invoke-static {v1, v2, v3, v4, v5}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v1, p0, Ledo;->a:Leds;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Ledo;->a:Leds;

    invoke-interface {v1, v0}, Leds;->a(Z)V

    .line 99
    :cond_1
    return-void
.end method
