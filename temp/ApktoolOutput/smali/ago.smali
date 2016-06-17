.class public final Lago;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field volatile a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lagn;

.field private final d:Lagh;

.field private final e:Lagv;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lagn;Lagh;Lagv;)V
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
            "Lagn;",
            "Lagh;",
            "Lagv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lago;->a:Z

    .line 58
    iput-object p1, p0, Lago;->b:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Lago;->c:Lagn;

    .line 60
    iput-object p3, p0, Lago;->d:Lagh;

    .line 61
    iput-object p4, p0, Lago;->e:Lagv;

    .line 62
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 75
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 80
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lago;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/android/volley/Request;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    invoke-static {v1}, Lcom/android/volley/Request;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object v1

    iget-object v2, p0, Lago;->e:Lagv;

    invoke-virtual {v2, v0, v1}, Lagv;->a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lago;->a:Z

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 100
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 101
    iget v1, v0, Lcom/android/volley/Request;->c:I

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 105
    :cond_2
    iget-object v1, p0, Lago;->c:Lagn;

    invoke-interface {v1, v0}, Lagn;->a(Lcom/android/volley/Request;)Lagp;

    move-result-object v1

    .line 106
    const-string v2, "network-http-complete"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 110
    iget-boolean v2, v1, Lagp;->c:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/volley/Request;->i:Z

    if-eqz v2, :cond_3

    .line 111
    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 131
    :catch_2
    move-exception v1

    const-string v2, "Unhandled exception %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lagx;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lago;->e:Lagv;

    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-direct {v3, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v0, v3}, Lagv;->a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 116
    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Lagp;)Lags;

    move-result-object v1

    .line 117
    const-string v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 121
    iget-boolean v2, v0, Lcom/android/volley/Request;->g:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lags;->b:Lagi;

    if-eqz v2, :cond_4

    .line 122
    iget-object v2, p0, Lago;->d:Lagh;

    invoke-virtual {v0}, Lcom/android/volley/Request;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lags;->b:Lagi;

    invoke-interface {v2, v3, v4}, Lagh;->a(Ljava/lang/String;Lagi;)V

    .line 123
    const-string v2, "network-cache-written"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 127
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/volley/Request;->i:Z

    .line 128
    iget-object v2, p0, Lago;->e:Lagv;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lagv;->a(Lcom/android/volley/Request;Lags;Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
