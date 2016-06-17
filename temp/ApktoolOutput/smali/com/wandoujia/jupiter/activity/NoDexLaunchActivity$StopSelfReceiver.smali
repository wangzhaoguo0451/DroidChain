.class Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NoDexLaunchActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;-><init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-static {v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->a(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    iget-object v1, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-static {v1}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->a(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    :cond_0
    return-void
.end method
