.class public final Lcrm;
.super Ljava/lang/Object;
.source "TaskFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wandoujia/base/utils/TaskFlow;

.field private synthetic b:Lcom/wandoujia/base/utils/TaskFlow$Task;

.field private synthetic c:Lcom/wandoujia/base/utils/TaskFlow;


# direct methods
.method public constructor <init>(Lcom/wandoujia/base/utils/TaskFlow;Lcom/wandoujia/base/utils/TaskFlow$Task;Lcom/wandoujia/base/utils/TaskFlow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcrm;->a:Lcom/wandoujia/base/utils/TaskFlow;

    iput-object p2, p0, Lcrm;->b:Lcom/wandoujia/base/utils/TaskFlow$Task;

    iput-object p3, p0, Lcrm;->c:Lcom/wandoujia/base/utils/TaskFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcrm;->b:Lcom/wandoujia/base/utils/TaskFlow$Task;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcrm;->b:Lcom/wandoujia/base/utils/TaskFlow$Task;

    new-instance v1, Lcrn;

    invoke-direct {v1, p0}, Lcrn;-><init>(Lcrm;)V

    invoke-interface {v0, v1}, Lcom/wandoujia/base/utils/TaskFlow$Task;->run(Lcom/wandoujia/base/utils/TaskFlow$TaskCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcrm;->c:Lcom/wandoujia/base/utils/TaskFlow;

    #getter for: Lcom/wandoujia/base/utils/TaskFlow;->counter:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/wandoujia/base/utils/TaskFlow;->access$100(Lcom/wandoujia/base/utils/TaskFlow;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_1
    iget-object v1, p0, Lcrm;->a:Lcom/wandoujia/base/utils/TaskFlow;

    #calls: Lcom/wandoujia/base/utils/TaskFlow;->reject(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lcom/wandoujia/base/utils/TaskFlow;->access$000(Lcom/wandoujia/base/utils/TaskFlow;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iget-object v0, p0, Lcrm;->c:Lcom/wandoujia/base/utils/TaskFlow;

    #getter for: Lcom/wandoujia/base/utils/TaskFlow;->counter:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/wandoujia/base/utils/TaskFlow;->access$100(Lcom/wandoujia/base/utils/TaskFlow;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcrm;->c:Lcom/wandoujia/base/utils/TaskFlow;

    #getter for: Lcom/wandoujia/base/utils/TaskFlow;->counter:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/wandoujia/base/utils/TaskFlow;->access$100(Lcom/wandoujia/base/utils/TaskFlow;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
