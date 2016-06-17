.class public Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "NoDexLaunchActivity.java"


# static fields
.field private static a:Landroid/os/HandlerThread;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "loadMultiDexThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->a:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;-><init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;B)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->d:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    const-string v1, "nodex.intent.action.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f04001e

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    const-string v1, "nodex.intent.action.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->d:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v2, v2}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->overridePendingTransition(II)V

    .line 41
    const v0, 0x7f030143

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->setContentView(I)V

    .line 43
    new-instance v0, Ldci;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldci;-><init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;B)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->b:Landroid/os/Handler;

    .line 44
    sget-object v0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->c:Landroid/os/Handler;

    .line 47
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->c:Landroid/os/Handler;

    new-instance v1, Ldch;

    invoke-direct {v1, p0}, Ldch;-><init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->d:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity$StopSelfReceiver;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    sget-object v0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->b:Landroid/os/Handler;

    goto :goto_0
.end method
