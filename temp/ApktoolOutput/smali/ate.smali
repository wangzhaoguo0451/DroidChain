.class public final Late;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/imagepipeline/producers/JobScheduler;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Late;->a:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 78
    iget-object v1, p0, Late;->a:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    monitor-enter v1

    :try_start_0
    iget-object v4, v1, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:Laqx;

    iget-boolean v0, v1, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Z

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/facebook/imagepipeline/producers/JobScheduler;->d:Laqx;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/facebook/imagepipeline/producers/JobScheduler;->e:Z

    sget-object v5, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v5, v1, Lcom/facebook/imagepipeline/producers/JobScheduler;->f:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-wide v2, v1, Lcom/facebook/imagepipeline/producers/JobScheduler;->g:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4, v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b(Laqx;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/facebook/imagepipeline/producers/JobScheduler;->b:Lath;

    invoke-interface {v2, v4, v0}, Lath;->a(Laqx;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    invoke-static {v4}, Laqx;->d(Laqx;)V

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v4}, Laqx;->d(Laqx;)V

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->c()V

    throw v0
.end method
