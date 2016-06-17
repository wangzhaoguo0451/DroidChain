.class public final Lagj;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# static fields
.field private static final b:Z


# instance fields
.field volatile a:Z

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lagh;

.field private final f:Lagv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lagx;->a:Z

    sput-boolean v0, Lagj;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lagh;Lagv;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lagh;",
            "Lagv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lagj;->a:Z

    .line 64
    iput-object p1, p0, Lagj;->c:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p2, p0, Lagj;->d:Ljava/util/concurrent/BlockingQueue;

    .line 66
    iput-object p3, p0, Lagj;->e:Lagh;

    .line 67
    iput-object p4, p0, Lagj;->f:Lagv;

    .line 68
    return-void
.end method

.method static synthetic a(Lagj;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lagj;->d:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    sget-boolean v0, Lagj;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lagx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 85
    iget-object v0, p0, Lagj;->e:Lagh;

    invoke-interface {v0}, Lagh;->a()V

    .line 91
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lagj;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 92
    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lcom/android/volley/Request;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lagj;->a:Z

    if-eqz v0, :cond_1

    .line 153
    return-void

    .line 101
    :cond_2
    :try_start_1
    iget-object v1, p0, Lagj;->e:Lagh;

    invoke-virtual {v0}, Lcom/android/volley/Request;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lagh;->a(Ljava/lang/String;)Lagi;

    move-result-object v4

    .line 102
    if-nez v4, :cond_3

    .line 103
    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lagj;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_3
    iget-wide v6, v4, Lagi;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_4

    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 111
    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 112
    iput-object v4, v0, Lcom/android/volley/Request;->k:Lagi;

    .line 113
    iget-object v1, p0, Lagj;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 110
    goto :goto_1

    .line 118
    :cond_5
    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lagp;

    iget-object v5, v4, Lagi;->a:[B

    iget-object v6, v4, Lagi;->f:Ljava/util/Map;

    invoke-direct {v1, v5, v6}, Lagp;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Lagp;)Lags;

    move-result-object v1

    .line 121
    const-string v5, "cache-hit-parsed"

    invoke-virtual {v0, v5}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4}, Lagi;->a()Z

    move-result v5

    if-nez v5, :cond_6

    .line 125
    iget-object v4, p0, Lagj;->f:Lagv;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Lagv;->a(Lcom/android/volley/Request;Lags;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 130
    :cond_6
    const-string v5, "cache-hit-refresh-needed"

    invoke-virtual {v0, v5}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 131
    iput-object v4, v0, Lcom/android/volley/Request;->k:Lagi;

    .line 134
    const/4 v4, 0x1

    iput-boolean v4, v1, Lags;->d:Z

    .line 138
    iget-object v4, p0, Lagj;->f:Lagv;

    new-instance v5, Lagk;

    invoke-direct {v5, p0, v0}, Lagk;-><init>(Lagj;Lcom/android/volley/Request;)V

    invoke-virtual {v4, v0, v1, v5}, Lagv;->a(Lcom/android/volley/Request;Lags;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
