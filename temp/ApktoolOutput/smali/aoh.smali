.class public final Laoh;
.super Laub;
.source "OkHttpNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laub",
        "<",
        "Laol;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field private final b:Lbxh;


# direct methods
.method public constructor <init>(Lbxh;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Laub;-><init>()V

    .line 68
    iput-object p1, p0, Laoh;->b:Lbxh;

    .line 69
    iget-object v0, p1, Lbxh;->d:Lbxd;

    invoke-virtual {v0}, Lbxd;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Laoh;->a:Ljava/util/concurrent/Executor;

    .line 70
    return-void
.end method

.method static synthetic a(Lbws;Ljava/lang/Exception;Lauc;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lbws;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lauc;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lauc;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lask;Laue;)Lata;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Laol;

    invoke-direct {v0, p1, p2}, Laol;-><init>(Lask;Laue;)V

    return-object v0
.end method

.method public final synthetic a(Lata;I)Ljava/util/Map;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p1, Laol;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "queue_time"

    iget-wide v2, p1, Laol;->b:J

    iget-wide v4, p1, Laol;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fetch_time"

    iget-wide v2, p1, Laol;->c:J

    iget-wide v4, p1, Laol;->b:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_time"

    iget-wide v2, p1, Laol;->c:J

    iget-wide v4, p1, Laol;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image_size"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic a(Lata;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    check-cast p1, Laol;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Laol;->c:J

    return-void
.end method

.method public final synthetic a(Lata;Lauc;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    check-cast p1, Laol;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Laol;->a:J

    invoke-virtual {p1}, Laol;->c()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Lbxk;

    invoke-direct {v0}, Lbxk;-><init>()V

    new-instance v2, Lbwr;

    invoke-direct {v2}, Lbwr;-><init>()V

    iput-boolean v3, v2, Lbwr;->b:Z

    invoke-virtual {v2}, Lbwr;->a()Lbwq;

    move-result-object v2

    invoke-virtual {v2}, Lbwq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "Cache-Control"

    invoke-virtual {v0, v2}, Lbxk;->a(Ljava/lang/String;)Lbxk;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v3, "Cache-Control"

    invoke-virtual {v0, v3, v2}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lbxk;->a:Ljava/lang/String;

    iput-object v4, v0, Lbxk;->b:Ljava/net/URL;

    const-string v1, "GET"

    invoke-virtual {v0, v1, v4}, Lbxk;->a(Ljava/lang/String;Lbxl;)Lbxk;

    move-result-object v0

    invoke-virtual {v0}, Lbxk;->a()Lbxj;

    move-result-object v0

    iget-object v1, p0, Laoh;->b:Lbxh;

    invoke-virtual {v1, v0}, Lbxh;->a(Lbxj;)Lbws;

    move-result-object v1

    iget-object v0, p1, Lata;->e:Laue;

    new-instance v2, Laoi;

    invoke-direct {v2, p0, v1}, Laoi;-><init>(Laoh;Lbws;)V

    invoke-interface {v0, v2}, Laue;->a(Lauf;)V

    new-instance v0, Laok;

    invoke-direct {v0, p1, p2, v1}, Laok;-><init>(Laol;Lauc;Lbws;)V

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lbws;->b:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already Executed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lbws;->b:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v1, Lbws;->a:Lbxh;

    iget-object v2, v2, Lbxh;->d:Lbxd;

    new-instance v3, Lbwu;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lbwu;-><init>(Lbws;Lcom/squareup/okhttp/Callback;B)V

    invoke-virtual {v2, v3}, Lbxd;->a(Lbwu;)V

    return-void
.end method
