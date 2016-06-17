.class public final Lcqt;
.super Ljava/lang/Object;
.source "RestrictGivenPeriodExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;


# direct methods
.method public constructor <init>(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcqt;->b:Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcqt;->a:Ljava/lang/Runnable;

    .line 36
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 40
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 43
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    iget-object v2, p0, Lcqt;->b:Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;

    #getter for: Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->lastExecuteMoment:J
    invoke-static {v2}, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->access$000(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcqt;->b:Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;

    #getter for: Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->givenIntervalTime:J
    invoke-static {v4}, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->access$100(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 45
    iget-object v2, p0, Lcqt;->b:Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;

    #getter for: Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->givenIntervalTime:J
    invoke-static {v2}, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->access$100(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;)J

    move-result-wide v2

    iget-object v4, p0, Lcqt;->b:Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;

    #getter for: Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->lastExecuteMoment:J
    invoke-static {v4}, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->access$000(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;)J

    move-result-wide v4

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 47
    :cond_0
    iget-object v2, p0, Lcqt;->b:Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;

    #setter for: Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->lastExecuteMoment:J
    invoke-static {v2, v0, v1}, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->access$002(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;J)J

    .line 50
    iget-object v0, p0, Lcqt;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcqt;->b:Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;

    #getter for: Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->mQuit:Z
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->access$200(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->access$300()Ljava/lang/String;

    goto :goto_0
.end method
