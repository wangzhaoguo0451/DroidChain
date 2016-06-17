.class public final Ldjv;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field private static a:Ldjv;

.field private static d:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f020487

    sput v0, Ldjv;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ldjw;

    invoke-direct {v0}, Ldjw;-><init>()V

    .line 34
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldjv;->b:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Ldjv;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Ldjv;->c:Landroid/app/NotificationManager;

    .line 37
    return-void
.end method

.method public static declared-synchronized a()Ldjv;
    .locals 2

    .prologue
    .line 40
    const-class v1, Ldjv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldjv;->a:Ldjv;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ldjv;

    invoke-direct {v0}, Ldjv;-><init>()V

    sput-object v0, Ldjv;->a:Ldjv;

    .line 43
    :cond_0
    sget-object v0, Ldjv;->a:Ldjv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Ldjv;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 178
    return-void
.end method

.method public final a(ILandroid/app/Notification;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Ldjv;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    new-instance v0, Landroid/app/Notification;

    sget v1, Ldjv;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v1, p0, Ldjv;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p3, p4, p5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 153
    iget-object v1, p0, Ldjv;->c:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 154
    return-void
.end method
