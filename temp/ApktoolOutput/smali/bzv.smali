.class public final Lbzv;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final j:Ljava/util/concurrent/ExecutorService;

.field private static synthetic w:Z


# instance fields
.field public final a:Lcom/squareup/okhttp/Protocol;

.field final b:Z

.field c:J

.field d:J

.field public final e:Lbzr;

.field final f:Lbzr;

.field final g:Lcom/squareup/okhttp/internal/spdy/Variant;

.field final h:Ljava/net/Socket;

.field public final i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

.field private final k:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcah;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private final r:Ljava/util/concurrent/ExecutorService;

.field private final s:Lcom/squareup/okhttp/internal/spdy/PushObserver;

.field private t:Z

.field private u:Lcae;

.field private final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 52
    const-class v0, Lbzv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lbzv;->w:Z

    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp SpdyConnection"

    .line 68
    invoke-static {v0, v8}, Lbya;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lbzv;->j:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method private constructor <init>(Lcad;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbzv;->l:Ljava/util/Map;

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lbzv;->q:J

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbzv;->c:J

    .line 113
    new-instance v0, Lbzr;

    invoke-direct {v0}, Lbzr;-><init>()V

    iput-object v0, p0, Lbzv;->e:Lbzr;

    .line 119
    new-instance v0, Lbzr;

    invoke-direct {v0}, Lbzr;-><init>()V

    iput-object v0, p0, Lbzv;->f:Lbzr;

    .line 121
    iput-boolean v2, p0, Lbzv;->t:Z

    .line 791
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lbzv;->v:Ljava/util/Set;

    .line 130
    iget-object v0, p1, Lcad;->d:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    .line 131
    iget-object v0, p1, Lcad;->e:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    iput-object v0, p0, Lbzv;->s:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    .line 132
    iget-boolean v0, p1, Lcad;->f:Z

    iput-boolean v0, p0, Lbzv;->b:Z

    .line 133
    iget-object v0, p1, Lcad;->c:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    iput-object v0, p0, Lbzv;->k:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    .line 135
    iget-boolean v0, p1, Lcad;->f:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    iput v0, p0, Lbzv;->o:I

    .line 136
    iget-boolean v0, p1, Lcad;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    .line 137
    iget v0, p0, Lbzv;->o:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbzv;->o:I

    .line 140
    :cond_0
    iget-boolean v0, p1, Lcad;->f:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lbzv;->e:Lbzr;

    const/high16 v1, 0x100

    invoke-virtual {v0, v10, v2, v1}, Lbzr;->a(III)Lbzr;

    .line 150
    :cond_1
    iget-object v0, p1, Lcad;->a:Ljava/lang/String;

    iput-object v0, p0, Lbzv;->m:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_3

    .line 153
    new-instance v0, Lbzf;

    invoke-direct {v0}, Lbzf;-><init>()V

    iput-object v0, p0, Lbzv;->g:Lcom/squareup/okhttp/internal/spdy/Variant;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lbzv;->m:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 157
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lbya;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lbzv;->r:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v0, p0, Lbzv;->f:Lbzr;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lbzr;->a(III)Lbzr;

    .line 160
    iget-object v0, p0, Lbzv;->f:Lbzr;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lbzr;->a(III)Lbzr;

    .line 167
    :goto_1
    iget-object v0, p0, Lbzv;->f:Lbzr;

    invoke-virtual {v0}, Lbzr;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbzv;->d:J

    .line 168
    iget-object v0, p1, Lcad;->b:Ljava/net/Socket;

    iput-object v0, p0, Lbzv;->h:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lbzv;->g:Lcom/squareup/okhttp/internal/spdy/Variant;

    iget-object v1, p1, Lcad;->b:Ljava/net/Socket;

    invoke-static {v1}, Lhsx;->a(Ljava/net/Socket;)Lhtg;

    move-result-object v1

    invoke-static {v1}, Lhsx;->a(Lhtg;)Lhsr;

    move-result-object v1

    iget-boolean v3, p0, Lbzv;->b:Z

    invoke-interface {v0, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Variant;->newWriter(Lhsr;Z)Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    .line 171
    new-instance v0, Lcae;

    invoke-direct {v0, p0, v2}, Lcae;-><init>(Lbzv;B)V

    iput-object v0, p0, Lbzv;->u:Lcae;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lbzv;->u:Lcae;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void

    .line 135
    :cond_2
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_4

    .line 162
    new-instance v0, Lbzs;

    invoke-direct {v0}, Lbzs;-><init>()V

    iput-object v0, p0, Lbzv;->g:Lcom/squareup/okhttp/internal/spdy/Variant;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lbzv;->r:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 165
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcad;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lbzv;-><init>(Lcad;)V

    return-void
.end method

.method static synthetic a(Lbzv;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lbzv;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lbzv;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    sget-object v6, Lbzv;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbzy;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbzv;->m:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lbzy;-><init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbzv;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v6, p0, Lbzv;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcac;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbzv;->m:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcac;-><init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbzv;ILhss;IZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v5, Lhsp;

    invoke-direct {v5}, Lhsp;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lhss;->a(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lhss;->a(Lhsp;J)J

    iget-wide v0, v5, Lhsp;->b:J

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v5, Lhsp;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v8, p0, Lbzv;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcab;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbzv;->m:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcab;-><init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILhsp;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbzv;ILjava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbzv;->v:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lbzv;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbzv;->v:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lbzv;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbzz;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbzv;->m:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbzz;-><init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbzv;ILjava/util/List;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v7, p0, Lbzv;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcaa;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbzv;->m:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcaa;-><init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbzv;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lbzv;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lbzv;ZIILaf;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v1, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->ping(ZII)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 445
    sget-boolean v1, Lbzv;->w:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 448
    :cond_0
    :try_start_0
    iget-object v3, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v1, p0, Lbzv;->p:Z

    if-eqz v1, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v0

    .line 454
    :goto_0
    monitor-enter p0

    .line 456
    :try_start_4
    iget-object v3, p0, Lbzv;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 457
    iget-object v0, p0, Lbzv;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v3, p0, Lbzv;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcah;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcah;

    .line 458
    iget-object v3, p0, Lbzv;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 459
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lbzv;->a(Z)V

    move-object v3, v0

    .line 461
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 467
    if-eqz v3, :cond_4

    .line 468
    array-length v4, v3

    move-object v0, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 470
    :try_start_5
    invoke-virtual {v1, p2}, Lcah;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 468
    :cond_1
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 448
    :cond_2
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lbzv;->p:Z

    iget v1, p0, Lbzv;->n:I

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v4, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    sget-object v5, Lbya;->a:[B

    invoke-interface {v4, v1, p1, v5}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 451
    :catch_0
    move-exception v1

    goto :goto_0

    .line 461
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 471
    :catch_1
    move-exception v1

    .line 472
    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    .line 477
    :cond_4
    :try_start_c
    iget-object v0, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-object v0, v1

    .line 492
    :cond_5
    :goto_4
    :try_start_d
    iget-object v1, p0, Lbzv;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 497
    :goto_5
    if-eqz v0, :cond_6

    throw v0

    .line 486
    :catch_2
    move-exception v0

    .line 487
    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_4

    .line 498
    :cond_6
    return-void

    .line 493
    :catch_3
    move-exception v0

    goto :goto_5

    :cond_7
    move-object v3, v0

    goto :goto_1
.end method

.method private declared-synchronized a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 201
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lbzv;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lbzv;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lbzv;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lbzv;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lbzv;->n:I

    return p1
.end method

.method static synthetic b(Lbzv;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lbzv;->p:Z

    return v0
.end method

.method static synthetic c(Lbzv;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lbzv;->n:I

    return v0
.end method

.method static synthetic d(Lbzv;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lbzv;->o:I

    return v0
.end method

.method static synthetic d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lbzv;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private declared-synchronized e()Laf;
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method static synthetic e(Lbzv;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lbzv;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lbzv;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lbzv;->k:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic g(Lbzv;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lbzv;->t:Z

    return v0
.end method

.method static synthetic h(Lbzv;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzv;->t:Z

    return v0
.end method

.method static synthetic i(Lbzv;)Laf;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lbzv;->e()Laf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lbzv;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzv;->p:Z

    return v0
.end method

.method static synthetic k(Lbzv;)Lcom/squareup/okhttp/internal/spdy/PushObserver;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lbzv;->s:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    return-object v0
.end method

.method static synthetic l(Lbzv;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lbzv;->v:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(I)Lcah;
    .locals 2
    .parameter

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbzv;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;Z)Lcah;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;Z)",
            "Lcah;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 247
    if-nez p2, :cond_0

    const/4 v3, 0x1

    .line 248
    :cond_0
    iget-object v8, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v8

    .line 253
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget-boolean v0, p0, Lbzv;->p:Z

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 268
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 257
    :cond_1
    :try_start_3
    iget v1, p0, Lbzv;->o:I

    .line 258
    iget v0, p0, Lbzv;->o:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbzv;->o:I

    .line 259
    new-instance v0, Lcah;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcah;-><init>(ILbzv;ZZLjava/util/List;)V

    .line 260
    invoke-virtual {v0}, Lcah;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lbzv;->l:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lbzv;->a(Z)V

    .line 264
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    :try_start_4
    iget-object v2, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, v1

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 268
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    if-nez p2, :cond_3

    .line 276
    iget-object v1, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->flush()V

    .line 279
    :cond_3
    return-object v0
.end method

.method final a(IJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 355
    sget-object v0, Lbzv;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbzx;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lbzv;->m:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lbzx;-><init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method final a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 340
    sget-object v6, Lbzv;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbzw;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbzv;->m:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbzw;-><init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 348
    return-void
.end method

.method public final a(IZLhsp;J)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 304
    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p2, p1, p3, v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->data(ZILhsp;I)V

    .line 328
    :cond_0
    return-void

    .line 320
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lbzv;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 321
    iget-object v2, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->maxDataLength()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 322
    iget-wide v4, p0, Lbzv;->d:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lbzv;->d:J

    .line 323
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 326
    iget-object v3, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    if-eqz p2, :cond_3

    cmp-long v0, p4, v8

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0, p1, p3, v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->data(ZILhsp;I)V

    .line 309
    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    .line 311
    monitor-enter p0

    .line 313
    :goto_1
    :try_start_1
    iget-wide v2, p0, Lbzv;->d:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 317
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 4

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lbzv;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()J
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lbzv;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(I)Lcah;
    .locals 2
    .parameter

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbzv;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcah;

    .line 194
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbzv;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbzv;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 352
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->flush()V

    .line 412
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 441
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, v0, v1}, Lbzv;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 442
    return-void
.end method
