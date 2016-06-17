.class public final Leni;
.super Ljava/lang/Object;
.source "ActiveLogger.java"

# interfaces
.implements Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;


# instance fields
.field private a:Lenk;


# direct methods
.method public constructor <init>(Lenk;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Leni;->a:Lenk;

    .line 32
    return-void
.end method

.method private static a(Landroid/content/Context;)J
    .locals 4
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "today_active_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "today_active_count"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method


# virtual methods
.method public final scheduleCheck(Landroid/content/Context;Lcom/wandoujia/base/services/AlarmService$Callback;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_active_time"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1, v8, v9}, Leni;->a(Landroid/content/Context;J)V

    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    :goto_1
    if-nez v0, :cond_5

    .line 37
    invoke-interface {p2}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    .line 51
    :goto_2
    return-void

    .line 36
    :cond_0
    invoke-static {p1}, Leni;->a(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    cmp-long v4, v2, v8

    if-gez v4, :cond_2

    const-string v4, "Active"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The time has been changed, duration is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x25c3f80

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Leni;->a:Lenk;

    invoke-interface {v2}, Lenk;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_active_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1}, Leni;->a(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Leni;->a(Landroid/content/Context;J)V

    move v0, v1

    goto :goto_1

    .line 42
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lenj;

    invoke-direct {v1, p2}, Lenj;-><init>(Lcom/wandoujia/base/services/AlarmService$Callback;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
