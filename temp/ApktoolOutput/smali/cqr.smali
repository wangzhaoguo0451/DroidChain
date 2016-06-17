.class public final Lcqr;
.super Ljava/lang/Object;
.source "CachedThreadPoolExecutorWithCapacity.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Z

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private synthetic e:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;


# direct methods
.method private constructor <init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)V
    .locals 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcqr;->e:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcqr;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcqr;-><init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)V

    return-void
.end method

.method static synthetic a(Lcqr;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcqr;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcqr;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic a(Lcqr;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcqr;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcqr;->e:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    iget-object v1, p0, Lcqr;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->cancel(Ljava/lang/Runnable;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcqr;->b:Z

    .line 353
    iget-boolean v0, p0, Lcqr;->b:Z

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcqr;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 369
    iget-object v0, p0, Lcqr;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcqr;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 376
    iget-object v0, p0, Lcqr;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcqr;->b:Z

    return v0
.end method

.method public final isDone()Z
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcqr;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
