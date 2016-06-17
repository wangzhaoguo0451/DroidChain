.class final Lfos;
.super Ljava/lang/Object;
.source "ConnectionServiceWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lfos;->a:Ljava/util/List;

    iput-object p2, p0, Lfos;->b:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lfos;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v1, "setting_wifi_auto_connect"

    invoke-virtual {v0, v1}, Lcom/wandoujia/shared_storage/SharedSettings;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lfos;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    const-string v3, "com.wandoujia.phoenix2.usbproxy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x1

    .line 111
    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lfos;->b:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    sget-object v1, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->ADDED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lfos;->b:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    sget-object v1, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->CHANGED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lfos;->b:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    sget-object v1, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->REPLACED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    if-ne v0, v1, :cond_0

    .line 114
    :cond_3
    invoke-static {}, Lfop;->g()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
