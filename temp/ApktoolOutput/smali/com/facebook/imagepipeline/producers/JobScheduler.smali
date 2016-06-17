.class public final Lcom/facebook/imagepipeline/producers/JobScheduler;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lath;

.field public final c:Ljava/lang/Runnable;

.field public d:Laqx;

.field public e:Z

.field public f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public g:J

.field private final h:Ljava/lang/Runnable;

.field private final i:I

.field private j:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lath;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->a:Ljava/util/concurrent/Executor;

    .line 73
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lath;

    .line 74
    iput p3, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->i:I

    .line 75
    new-instance v0, Late;

    invoke-direct {v0, p0}, Late;-><init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->c:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Latf;

    invoke-direct {v0, p0}, Latf;-><init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->h:Ljava/lang/Runnable;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:Laqx;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Z

    .line 89
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->IDLE:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 90
    iput-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:J

    .line 91
    iput-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:J

    .line 92
    return-void
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 180
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 181
    sget-object v0, Ld;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Ld;->d:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v0, Ld;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->h:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static b(Laqx;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 237
    if-nez p1, :cond_0

    invoke-static {p0}, Laqx;->e(Laqx;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:Laqx;

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:Laqx;

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Z

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v0}, Laqx;->d(Laqx;)V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Laqx;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b(Laqx;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 124
    :cond_0
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:Laqx;

    .line 126
    invoke-static {p1}, Laqx;->a(Laqx;)Laqx;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:Laqx;

    .line 127
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Z

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {v0}, Laqx;->d(Laqx;)V

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 146
    const-wide/16 v2, 0x0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:Laqx;

    iget-boolean v7, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Z

    invoke-static {v6, v7}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b(Laqx;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 150
    monitor-exit p0

    .line 173
    :goto_0
    return v0

    .line 152
    :cond_0
    sget-object v6, Latg;->a:[I

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v7}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 164
    :goto_1
    :pswitch_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a(J)V

    :cond_1
    move v0, v1

    .line 173
    goto :goto_0

    .line 154
    :pswitch_1
    :try_start_1
    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:J

    iget v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->i:I

    int-to-long v6, v0

    add-long/2addr v2, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 156
    iput-wide v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:J

    .line 157
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->QUEUED:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    move v0, v1

    .line 158
    goto :goto_1

    .line 163
    :pswitch_2
    sget-object v6, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING_AND_PENDING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v6, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final c()V
    .locals 7

    .prologue
    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 217
    const-wide/16 v2, 0x0

    .line 218
    const/4 v0, 0x0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    sget-object v6, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING_AND_PENDING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    if-ne v1, v6, :cond_1

    .line 221
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:J

    iget v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 222
    const/4 v0, 0x1

    .line 223
    iput-wide v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:J

    .line 224
    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->QUEUED:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 228
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    sub-long v0, v2, v4

    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a(J)V

    .line 232
    :cond_0
    return-void

    .line 226
    :cond_1
    :try_start_1
    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->IDLE:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d()J
    .locals 4

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:J

    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
