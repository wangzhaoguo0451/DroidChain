.class public Lcom/wandoujia/base/utils/BatteryUtils;
.super Landroid/content/BroadcastReceiver;
.source "BatteryUtils.java"


# static fields
.field private static instance:Lcom/wandoujia/base/utils/BatteryUtils;


# instance fields
.field private current:I

.field private isCharging:Z

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/base/utils/BatteryUtils;->instance:Lcom/wandoujia/base/utils/BatteryUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    iput v0, p0, Lcom/wandoujia/base/utils/BatteryUtils;->current:I

    .line 11
    iput v0, p0, Lcom/wandoujia/base/utils/BatteryUtils;->total:I

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/base/utils/BatteryUtils;->isCharging:Z

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/wandoujia/base/utils/BatteryUtils;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/base/utils/BatteryUtils;->instance:Lcom/wandoujia/base/utils/BatteryUtils;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/wandoujia/base/utils/BatteryUtils;

    invoke-direct {v0}, Lcom/wandoujia/base/utils/BatteryUtils;-><init>()V

    sput-object v0, Lcom/wandoujia/base/utils/BatteryUtils;->instance:Lcom/wandoujia/base/utils/BatteryUtils;

    .line 22
    :cond_0
    sget-object v0, Lcom/wandoujia/base/utils/BatteryUtils;->instance:Lcom/wandoujia/base/utils/BatteryUtils;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "level"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/base/utils/BatteryUtils;->current:I

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "scale"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/base/utils/BatteryUtils;->total:I

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "plugged"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 33
    :goto_0
    iget-boolean v3, p0, Lcom/wandoujia/base/utils/BatteryUtils;->isCharging:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 34
    iput-boolean v2, p0, Lcom/wandoujia/base/utils/BatteryUtils;->isCharging:Z

    .line 39
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 31
    goto :goto_0

    .line 35
    :cond_2
    iget-boolean v2, p0, Lcom/wandoujia/base/utils/BatteryUtils;->isCharging:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 36
    iput-boolean v1, p0, Lcom/wandoujia/base/utils/BatteryUtils;->isCharging:Z

    goto :goto_1
.end method
