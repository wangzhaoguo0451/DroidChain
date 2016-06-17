.class public final Letw;
.super Ljava/lang/Object;
.source "AccountChecker.java"

# interfaces
.implements Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;


# static fields
.field private static final a:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Letw;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final scheduleCheck(Landroid/content/Context;Lcom/wandoujia/base/services/AlarmService$Callback;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 27
    invoke-static {}, Lchv;->A()J

    move-result-wide v0

    .line 28
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x55d4a800

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v3, Letw;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v2, v2

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 65
    :goto_1
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-static {}, Lchv;->B()V

    .line 35
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    new-instance v1, Letx;

    invoke-direct {v1, p2}, Letx;-><init>(Lcom/wandoujia/base/services/AlarmService$Callback;)V

    invoke-virtual {v0, v1}, Letz;->a(Lcmg;)V

    goto :goto_1

    .line 60
    :cond_2
    invoke-interface {p2}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    goto :goto_1

    .line 63
    :cond_3
    invoke-interface {p2}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    goto :goto_1
.end method
