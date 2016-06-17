.class public final Lend;
.super Landroid/os/Handler;
.source "LogSender.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/LogSender;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/LogSender;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lend;->a:Lcom/wandoujia/logv3/LogSender;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 92
    iget-object v1, p0, Lend;->a:Lcom/wandoujia/logv3/LogSender;

    invoke-static {v1}, Lcom/wandoujia/logv3/LogSender;->a(Lcom/wandoujia/logv3/LogSender;)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 93
    invoke-static {}, Lcom/wandoujia/logv3/LogSender;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v2, p0, Lend;->a:Lcom/wandoujia/logv3/LogSender;

    invoke-static {v2}, Lcom/wandoujia/logv3/LogSender;->b(Lcom/wandoujia/logv3/LogSender;)Z

    .line 95
    iget-object v2, p0, Lend;->a:Lcom/wandoujia/logv3/LogSender;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/wandoujia/logv3/LogSender;->a(Lcom/wandoujia/logv3/LogSender;J)J

    .line 96
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lend;->a:Lcom/wandoujia/logv3/LogSender;

    invoke-static {v0}, Lcom/wandoujia/logv3/LogSender;->c(Lcom/wandoujia/logv3/LogSender;)V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
