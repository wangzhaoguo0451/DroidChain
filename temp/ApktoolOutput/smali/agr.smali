.class public Lagr;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/android/volley/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lagh;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lagn;

.field private final h:Lagv;

.field private i:[Lago;

.field private j:Lagj;


# direct methods
.method public constructor <init>(Lagh;Lagn;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lagr;-><init>(Lagh;Lagn;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lagh;Lagn;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Lagv;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lagv;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lagr;-><init>(Lagh;Lagn;ILagv;)V

    .line 116
    return-void
.end method

.method private constructor <init>(Lagh;Lagn;ILagv;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lagr;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lagr;->a:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lagr;->b:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lagr;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 69
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lagr;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 100
    iput-object p1, p0, Lagr;->d:Lagh;

    .line 101
    iput-object p2, p0, Lagr;->g:Lagn;

    .line 102
    new-array v0, p3, [Lago;

    iput-object v0, p0, Lagr;->i:[Lago;

    .line 103
    iput-object p4, p0, Lagr;->h:Lagv;

    .line 104
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 5
    .parameter

    .prologue
    .line 219
    iput-object p0, p1, Lcom/android/volley/Request;->f:Lagr;

    .line 220
    iget-object v1, p0, Lagr;->b:Ljava/util/Set;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lagr;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v0, p0, Lagr;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/volley/Request;->e:Ljava/lang/Integer;

    .line 226
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 229
    iget-boolean v0, p1, Lcom/android/volley/Request;->g:Z

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lagr;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_0
    return-object p1

    .line 222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 235
    :cond_0
    iget-object v1, p0, Lagr;->a:Ljava/util/Map;

    monitor-enter v1

    .line 236
    :try_start_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->a()Ljava/lang/String;

    move-result-object v2

    .line 237
    iget-object v0, p0, Lagr;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lagr;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 240
    if-nez v0, :cond_1

    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 243
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v3, p0, Lagr;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-boolean v0, Lagx;->a:Z

    if-eqz v0, :cond_2

    .line 246
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lagx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 255
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 251
    :cond_3
    :try_start_3
    iget-object v0, p0, Lagr;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lagr;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public a()V
    .locals 6

    .prologue
    .line 132
    invoke-virtual {p0}, Lagr;->b()V

    .line 134
    new-instance v0, Lagj;

    iget-object v1, p0, Lagr;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lagr;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lagr;->d:Lagh;

    iget-object v4, p0, Lagr;->h:Lagv;

    invoke-direct {v0, v1, v2, v3, v4}, Lagj;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lagh;Lagv;)V

    iput-object v0, p0, Lagr;->j:Lagj;

    .line 135
    iget-object v0, p0, Lagr;->j:Lagj;

    invoke-virtual {v0}, Lagj;->start()V

    .line 138
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lagr;->i:[Lago;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 139
    new-instance v1, Lago;

    iget-object v2, p0, Lagr;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lagr;->g:Lagn;

    iget-object v4, p0, Lagr;->d:Lagh;

    iget-object v5, p0, Lagr;->h:Lagv;

    invoke-direct {v1, v2, v3, v4, v5}, Lago;-><init>(Ljava/util/concurrent/BlockingQueue;Lagn;Lagh;Lagv;)V

    .line 141
    iget-object v2, p0, Lagr;->i:[Lago;

    aput-object v1, v2, v0

    .line 142
    invoke-virtual {v1}, Lago;->start()V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lagr;->j:Lagj;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lagr;->j:Lagj;

    iput-boolean v2, v0, Lagj;->a:Z

    invoke-virtual {v0}, Lagj;->interrupt()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lagr;->i:[Lago;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 154
    iget-object v1, p0, Lagr;->i:[Lago;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lagr;->i:[Lago;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lago;->a:Z

    invoke-virtual {v1}, Lago;->interrupt()V

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    return-void
.end method
