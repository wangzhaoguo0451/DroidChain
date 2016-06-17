.class public Lcom/wandoujia/launcher_base/download/receiver/ReverseProxyReiceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReverseProxyReiceiver.java"


# static fields
.field private static volatile a:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReverseProxyReiceiver;->a:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    if-nez p2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "action_reverse_proxy_on"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lehu;->b(Landroid/content/Context;)Z

    .line 54
    sget-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->ON:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReverseProxyReiceiver;->a:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->setUsbReverseProxyState(Z)V

    .line 56
    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->ON:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->d()V

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "action_reverse_proxy_off"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Lehu;->a(Landroid/content/Context;)Z

    .line 61
    sget-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->OFF:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReverseProxyReiceiver;->a:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->setUsbReverseProxyState(Z)V

    .line 63
    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->OFF:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->d()V

    goto :goto_0
.end method
