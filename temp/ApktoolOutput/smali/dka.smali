.class public final Ldka;
.super Ljava/lang/Object;
.source "NotifyCardManager.java"


# static fields
.field private static b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/content/Context;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ldkb;

    invoke-direct {v0}, Ldkb;-><init>()V

    sput-object v0, Ldka;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldka;->a:Ljava/util/List;

    .line 54
    iget-object v0, p0, Ldka;->a:Ljava/util/List;

    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c()Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Ldka;->a:Ljava/util/List;

    sget-object v1, Ldka;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 56
    return-void
.end method

.method static synthetic a()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v2, "phoenix.intent.action.GEN_NOTIFY_CARD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Ldka;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Ldka;->c:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v7, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v2, 0x14

    const/16 v0, 0x18

    :try_start_0
    const-string v3, "upgrade_notification_show_hour_start"

    invoke-static {v3}, Lcom/wandoujia/p4/configs/Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "upgrade_notification_show_hour_end"

    invoke-static {v3}, Lcom/wandoujia/p4/configs/Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgcy;->a(J)I

    move-result v4

    if-lt v4, v2, :cond_0

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->set(II)V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    sub-int/2addr v0, v2

    int-to-long v8, v0

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    rem-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v0, Ldka;->c:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    sput-object p0, Ldka;->c:Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldkc;

    invoke-direct {v1}, Ldkc;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method
