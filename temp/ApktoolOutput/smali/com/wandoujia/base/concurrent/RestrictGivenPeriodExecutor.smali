.class public Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;
.super Ljava/lang/Object;
.source "RestrictGivenPeriodExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final THREAD_POOL_CACHE_TIME:I = 0xbb8


# instance fields
.field private final givenIntervalTime:J

.field private lastExecuteMoment:J

.field private mQuit:Z

.field private final threadPool:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->mQuit:Z

    .line 66
    iput-wide p1, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->givenIntervalTime:J

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->lastExecuteMoment:J

    .line 69
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 70
    new-instance v1, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const-wide/16 v4, 0xbb8

    const-string v6, "RestrictGivenPeriodExecutor"

    invoke-direct/range {v1 .. v6}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(ILjava/util/concurrent/BlockingQueue;JLjava/lang/String;)V

    iput-object v1, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->threadPool:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    .line 72
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;)J
    .locals 2
    .parameter

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->lastExecuteMoment:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->lastExecuteMoment:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;)J
    .locals 2
    .parameter

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->givenIntervalTime:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->mQuit:Z

    return v0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->threadPool:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    new-instance v1, Lcqt;

    invoke-direct {v1, p0, p1}, Lcqt;-><init>(Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->mQuit:Z

    .line 94
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/RestrictGivenPeriodExecutor;->threadPool:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    invoke-virtual {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->shutdown()V

    .line 95
    return-void
.end method
