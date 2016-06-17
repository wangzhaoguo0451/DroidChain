.class public Lcom/wandoujia/base/utils/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static final CORE_THREAD_NUM:I = 0x5

.field private static final KEEP_ALIVE_TIME:J = 0xaL

.field public static final MIN_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final NORMAL_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/16 v4, 0xa

    const v3, 0x7fffffff

    const/4 v0, 0x5

    const/4 v2, 0x1

    .line 29
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7, v2}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    new-instance v8, Lcrp;

    invoke-direct {v8, v2}, Lcrp;-><init>(I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/wandoujia/base/utils/ThreadPool;->MIN_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7, v2}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    new-instance v8, Lcrp;

    invoke-direct {v8, v0}, Lcrp;-><init>(I)V

    move v2, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/wandoujia/base/utils/ThreadPool;->NORMAL_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static cancel(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/wandoujia/base/utils/ThreadPool;->MIN_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 70
    sget-object v0, Lcom/wandoujia/base/utils/ThreadPool;->NORMAL_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    sget-object v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;->NORMAL:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;Lcom/wandoujia/base/utils/ThreadPool$Priority;)V

    .line 58
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Lcom/wandoujia/base/utils/ThreadPool$Priority;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    sget-object v0, Lcom/wandoujia/base/utils/ThreadPool$Priority;->LOW:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    if-ne p1, v0, :cond_0

    .line 45
    sget-object v0, Lcom/wandoujia/base/utils/ThreadPool;->MIN_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/wandoujia/base/utils/ThreadPool;->NORMAL_PRIOR_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
