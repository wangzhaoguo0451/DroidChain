.class public Lcom/wandoujia/p4/receiver/BatteryChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryChangeReceiver.java"


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 49
    const-string v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 50
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 54
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/receiver/BatteryChangeReceiver;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/p4/receiver/BatteryChangeReceiver;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_3

    .line 55
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/receiver/BatteryChangeReceiver;->a:Ljava/lang/Boolean;

    .line 56
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->c:Lgdw;

    invoke-virtual {v0}, Lgdw;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 50
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_3
    return-void
.end method
