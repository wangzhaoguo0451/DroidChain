.class public Lcom/wandoujia/p4/receiver/OnlineConfigScheduleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnlineConfigScheduleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13
    const-string v0, "launcher.intent.action.CHECK_ONLINE_CONFIG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Leha;->a()Leha;

    move-result-object v0

    invoke-virtual {v0}, Leha;->b()V

    .line 15
    invoke-static {}, Leha;->n()V

    .line 17
    :cond_0
    return-void
.end method
