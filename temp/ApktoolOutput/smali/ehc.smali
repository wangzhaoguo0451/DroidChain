.class final Lehc;
.super Ljava/lang/Object;
.source "OnlineConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "launcher.intent.action.CHECK_ONLINE_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x2000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 429
    if-nez v1, :cond_0

    .line 430
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 434
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 435
    const/4 v0, 0x6

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 436
    const/16 v0, 0xb

    const/16 v3, 0xf

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 437
    const/16 v0, 0xc

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 438
    const/16 v0, 0xd

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 439
    const/16 v0, 0xe

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 440
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v3, 0x1808580

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 441
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 443
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 446
    :cond_0
    return-void
.end method
