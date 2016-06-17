.class final Lcom/wandoujia/plugin/qr/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/plugin/qr/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/wandoujia/plugin/qr/InactivityTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wandoujia/plugin/qr/InactivityTimer$PowerStatusReceiver;->a:Lcom/wandoujia/plugin/qr/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/plugin/qr/InactivityTimer;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/wandoujia/plugin/qr/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/wandoujia/plugin/qr/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/InactivityTimer$PowerStatusReceiver;->a:Lcom/wandoujia/plugin/qr/InactivityTimer;

    invoke-virtual {v0}, Lcom/wandoujia/plugin/qr/InactivityTimer;->b()V

    .line 104
    :cond_0
    return-void
.end method
