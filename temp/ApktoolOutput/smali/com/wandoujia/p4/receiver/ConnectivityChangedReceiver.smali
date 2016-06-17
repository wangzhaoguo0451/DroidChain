.class public Lcom/wandoujia/p4/receiver/ConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(I)V
    .locals 3
    .parameter

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    const-string v1, "phoenix.intent.extra.USER_AGENT"

    const-string v2, "phoenix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "phoenix.intent.extra.SOURCE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "CONNECTION_ACTION"

    const-class v2, Lcom/wandoujia/base/services/AlarmService;

    invoke-static {p1, v1, v2}, Lcom/wandoujia/base/services/AlarmService;->scheduleAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->MOUNTED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->b:Lgdw;

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhau;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;->MOUNTED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$MediaState;

    if-ne v1, v3, :cond_0

    iget-object v0, v0, Lhau;->a:Lfpk;

    invoke-virtual {v0}, Lfpk;->c()V

    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 31
    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 33
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    invoke-static {v4}, Lcom/wandoujia/p4/receiver/ConnectivityChangedReceiver;->a(I)V

    .line 35
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "phoenix.intent.extra.USER_AGENT"

    const-string v3, "phoenix"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phoenix.intent.extra.SOURCE"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    :cond_2
    :goto_1
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Landroid/net/NetworkInfo;)V

    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 43
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-static {v4}, Lcom/wandoujia/p4/receiver/ConnectivityChangedReceiver;->a(I)V

    .line 57
    :cond_3
    :goto_2
    return-void

    .line 38
    :cond_4
    invoke-static {v5}, Lcom/wandoujia/p4/receiver/ConnectivityChangedReceiver;->a(I)V

    goto :goto_1

    .line 46
    :cond_5
    invoke-static {v5}, Lcom/wandoujia/p4/receiver/ConnectivityChangedReceiver;->a(I)V

    goto :goto_2
.end method
