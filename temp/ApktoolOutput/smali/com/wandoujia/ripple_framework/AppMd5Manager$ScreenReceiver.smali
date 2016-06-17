.class public final Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppMd5Manager.java"


# instance fields
.field public final synthetic a:Lcom/wandoujia/ripple_framework/AppMd5Manager;

.field private b:Ljava/util/Timer;

.field private c:Ljava/lang/Thread;

.field private d:[B


# direct methods
.method private constructor <init>(Lcom/wandoujia/ripple_framework/AppMd5Manager;)V
    .locals 1
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->a:Lcom/wandoujia/ripple_framework/AppMd5Manager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 337
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->d:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/ripple_framework/AppMd5Manager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;-><init>(Lcom/wandoujia/ripple_framework/AppMd5Manager;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->c:Ljava/lang/Thread;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;)[B
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->d:[B

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->b:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 341
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->d:[B

    monitor-enter v1

    .line 342
    :try_start_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->b:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->b:Ljava/util/Timer;

    .line 345
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->b:Ljava/util/Timer;

    new-instance v2, Lhak;

    invoke-direct {v2, p0}, Lhak;-><init>(Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 371
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 361
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->b:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->b:Ljava/util/Timer;

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/AppMd5Manager$ScreenReceiver;->c:Ljava/lang/Thread;

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
