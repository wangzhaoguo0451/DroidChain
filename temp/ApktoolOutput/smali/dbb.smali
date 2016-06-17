.class final Ldbb;
.super Ljava/lang/Object;
.source "ImageThreadPool.java"


# instance fields
.field final a:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(IJ)V

    iput-object v0, p0, Ldbb;->a:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Ldbb;->a:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    invoke-virtual {v0, p1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ldbb;->a:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->cancel(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method
