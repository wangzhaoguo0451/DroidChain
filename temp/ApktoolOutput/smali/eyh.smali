.class public final Leyh;
.super Ljava/lang/Object;
.source "CleanMemoryChecker.java"

# interfaces
.implements Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Leyh;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
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
    const/4 v0, 0x0

    .line 33
    invoke-static {}, Leha;->a()Leha;

    const-string v1, "enable_clean_widget"

    invoke-static {v1}, Ld;->R(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->O()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sget-object v3, Leyh;->a:[I

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    aget v5, v3, v1

    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/MemoryUtil;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Lcom/wandoujia/base/utils/MemoryUtil;->getTotalMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    :goto_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    invoke-static {v0}, Leyi;->a(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wandoujia/p4/configs/Config;->f(J)V

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->H()V

    .line 34
    :cond_0
    invoke-interface {p2}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    .line 35
    return-void

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1
.end method
