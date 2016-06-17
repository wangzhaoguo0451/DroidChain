.class public final Lcom/wandoujia/logv3/toolkit/ANRWatchDog;
.super Ljava/lang/Object;
.source "LogUncaughtExceptionHandler.java"


# instance fields
.field public a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

.field public b:Landroid/os/Handler;

.field public c:Landroid/os/Handler;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ACK_WAITING:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->c:Landroid/os/Handler;

    .line 104
    new-instance v0, Lene;

    invoke-direct {v0, p0}, Lene;-><init>(Lcom/wandoujia/logv3/toolkit/ANRWatchDog;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->d:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Leng;

    invoke-direct {v0, p0}, Leng;-><init>(Lcom/wandoujia/logv3/toolkit/ANRWatchDog;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->e:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ANRWatchDog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->b:Landroid/os/Handler;

    .line 149
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void
.end method
