.class final Labi;
.super Landroid/os/Handler;
.source "Stats.java"


# instance fields
.field private synthetic a:Labh;


# direct methods
.method public constructor <init>(Labh;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Labi;->a:Labh;

    .line 75
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    .line 79
    iget-object v1, p0, Labi;->a:Labh;

    monitor-enter v1

    .line 80
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    new-instance v2, Labj;

    invoke-direct {v2, p1}, Labj;-><init>(Landroid/os/Message;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :goto_0
    :pswitch_0
    monitor-exit v1

    return-void

    .line 82
    :pswitch_1
    iget-object v0, p0, Labi;->a:Labh;

    iget-wide v2, v0, Labh;->b:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Labh;->b:J

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 85
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Labi;->a:Labh;

    iget-wide v2, v0, Labh;->c:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Labh;->c:J

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Labi;->a:Labh;

    iget v2, v0, Labh;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Labh;->f:I

    .line 89
    iget-object v0, p0, Labi;->a:Labh;

    iget-wide v2, v0, Labh;->d:J

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Labh;->d:J

    goto :goto_0

    .line 93
    :pswitch_4
    iget-object v0, p0, Labi;->a:Labh;

    iget v2, v0, Labh;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Labh;->g:I

    .line 94
    iget-object v0, p0, Labi;->a:Labh;

    iget-wide v2, v0, Labh;->e:J

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Labh;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
