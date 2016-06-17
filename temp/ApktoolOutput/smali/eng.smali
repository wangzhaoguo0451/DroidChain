.class public final Leng;
.super Ljava/lang/Object;
.source "LogUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/toolkit/ANRWatchDog;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Leng;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 119
    sget-object v0, Lenh;->a:[I

    iget-object v1, p0, Leng;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    iget-object v1, v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    iget-object v0, p0, Leng;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    iget-object v0, v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->b:Landroid/os/Handler;

    iget-object v1, p0, Leng;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    iget-object v1, v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Leng;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    sget-object v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ACK_WAITING:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    iput-object v1, v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    .line 122
    iget-object v0, p0, Leng;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    iget-object v0, v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->c:Landroid/os/Handler;

    iget-object v1, p0, Leng;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    iget-object v1, v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Application Not Responding"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-static {v1}, Leod;->b(Ljava/lang/Throwable;)V

    .line 126
    iget-object v0, p0, Leng;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    sget-object v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ANR:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    iput-object v1, v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
