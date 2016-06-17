.class public Lcom/wandoujia/base/utils/TaskFlow;
.super Ljava/lang/Object;
.source "TaskFlow.java"


# instance fields
.field private counter:Ljava/util/concurrent/CountDownLatch;

.field private error:Ljava/lang/Exception;

.field private terminating:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/base/utils/TaskFlow;->counter:Ljava/util/concurrent/CountDownLatch;

    .line 28
    iput-boolean v1, p0, Lcom/wandoujia/base/utils/TaskFlow;->terminating:Z

    .line 29
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/base/utils/TaskFlow;->counter:Ljava/util/concurrent/CountDownLatch;

    .line 38
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/base/utils/TaskFlow;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/wandoujia/base/utils/TaskFlow;->reject(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/wandoujia/base/utils/TaskFlow;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 8
    iget-object v0, p0, Lcom/wandoujia/base/utils/TaskFlow;->counter:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private reject(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/base/utils/TaskFlow;->terminating:Z

    .line 33
    iput-object p1, p0, Lcom/wandoujia/base/utils/TaskFlow;->error:Ljava/lang/Exception;

    .line 34
    return-void
.end method


# virtual methods
.method public eventually(Lcom/wandoujia/base/utils/TaskFlow$Task;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/base/utils/TaskFlow;->error:Ljava/lang/Exception;

    .line 135
    iput-boolean v1, p0, Lcom/wandoujia/base/utils/TaskFlow;->terminating:Z

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wandoujia/base/utils/TaskFlow$Task;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/wandoujia/base/utils/TaskFlow;->then([Lcom/wandoujia/base/utils/TaskFlow$Task;)Lcom/wandoujia/base/utils/TaskFlow;

    .line 137
    return-void
.end method

.method public except(Lcom/wandoujia/base/utils/TaskFlow$ErrorHandler;)Lcom/wandoujia/base/utils/TaskFlow;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/utils/TaskFlow;->counter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    new-instance v0, Lcom/wandoujia/base/utils/TaskFlow;

    invoke-direct {v0, v2}, Lcom/wandoujia/base/utils/TaskFlow;-><init>(I)V

    .line 118
    iget-boolean v1, p0, Lcom/wandoujia/base/utils/TaskFlow;->terminating:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/base/utils/TaskFlow;->error:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/wandoujia/base/utils/TaskFlow;->error:Ljava/lang/Exception;

    invoke-interface {p1, v1}, Lcom/wandoujia/base/utils/TaskFlow$ErrorHandler;->handle(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iput-boolean v2, p0, Lcom/wandoujia/base/utils/TaskFlow;->terminating:Z

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wandoujia/base/utils/TaskFlow;->error:Ljava/lang/Exception;

    .line 125
    :cond_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-direct {p0, v0}, Lcom/wandoujia/base/utils/TaskFlow;->reject(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public then(Lcom/wandoujia/base/utils/TaskFlow$Task;)Lcom/wandoujia/base/utils/TaskFlow;
    .locals 2
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wandoujia/base/utils/TaskFlow$Task;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/wandoujia/base/utils/TaskFlow;->then([Lcom/wandoujia/base/utils/TaskFlow$Task;)Lcom/wandoujia/base/utils/TaskFlow;

    move-result-object v0

    return-object v0
.end method

.method public then(Ljava/util/List;)Lcom/wandoujia/base/utils/TaskFlow;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/base/utils/TaskFlow$Task;",
            ">;)",
            "Lcom/wandoujia/base/utils/TaskFlow;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wandoujia/base/utils/TaskFlow$Task;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/base/utils/TaskFlow$Task;

    invoke-virtual {p0, v0}, Lcom/wandoujia/base/utils/TaskFlow;->then([Lcom/wandoujia/base/utils/TaskFlow$Task;)Lcom/wandoujia/base/utils/TaskFlow;

    move-result-object v0

    return-object v0
.end method

.method public then([Lcom/wandoujia/base/utils/TaskFlow$Task;)Lcom/wandoujia/base/utils/TaskFlow;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/utils/TaskFlow;->counter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iget-boolean v0, p0, Lcom/wandoujia/base/utils/TaskFlow;->terminating:Z

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Lcom/wandoujia/base/utils/TaskFlow;

    invoke-direct {v0, v1}, Lcom/wandoujia/base/utils/TaskFlow;-><init>(I)V

    .line 64
    iget-object v1, p0, Lcom/wandoujia/base/utils/TaskFlow;->error:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Lcom/wandoujia/base/utils/TaskFlow;->reject(Ljava/lang/Exception;)V

    .line 91
    :cond_1
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-direct {p0, v0}, Lcom/wandoujia/base/utils/TaskFlow;->reject(Ljava/lang/Exception;)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lcom/wandoujia/base/utils/TaskFlow;

    array-length v2, p1

    invoke-direct {v0, v2}, Lcom/wandoujia/base/utils/TaskFlow;-><init>(I)V

    .line 70
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 71
    new-instance v4, Lcrm;

    invoke-direct {v4, p0, v3, v0}, Lcrm;-><init>(Lcom/wandoujia/base/utils/TaskFlow;Lcom/wandoujia/base/utils/TaskFlow$Task;Lcom/wandoujia/base/utils/TaskFlow;)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
