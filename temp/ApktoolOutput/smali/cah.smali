.class public final Lcah;
.super Ljava/lang/Object;
.source "SpdyStream.java"


# static fields
.field static final synthetic i:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lbzv;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcaj;

.field final g:Lcai;

.field public final h:Lcak;

.field private final j:Lcak;

.field private k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcah;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcah;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILbzv;ZZLjava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbzv;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcah;->a:J

    .line 65
    new-instance v0, Lcak;

    invoke-direct {v0, p0}, Lcak;-><init>(Lcah;)V

    iput-object v0, p0, Lcah;->h:Lcak;

    .line 66
    new-instance v0, Lcak;

    invoke-direct {v0, p0}, Lcak;-><init>(Lcah;)V

    iput-object v0, p0, Lcah;->j:Lcak;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 77
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lcah;->c:I

    .line 80
    iput-object p2, p0, Lcah;->d:Lbzv;

    .line 81
    iget-object v0, p2, Lbzv;->f:Lbzr;

    .line 82
    invoke-virtual {v0}, Lbzr;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcah;->b:J

    .line 83
    new-instance v0, Lcaj;

    iget-object v1, p2, Lbzv;->e:Lbzr;

    .line 84
    invoke-virtual {v1}, Lbzr;->b()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcaj;-><init>(Lcah;JB)V

    iput-object v0, p0, Lcah;->f:Lcaj;

    .line 85
    new-instance v0, Lcai;

    invoke-direct {v0, p0}, Lcai;-><init>(Lcah;)V

    iput-object v0, p0, Lcah;->g:Lcai;

    .line 86
    iget-object v0, p0, Lcah;->f:Lcaj;

    invoke-static {v0, p4}, Lcaj;->a(Lcaj;Z)Z

    .line 87
    iget-object v0, p0, Lcah;->g:Lcai;

    invoke-static {v0, p3}, Lcai;->a(Lcai;Z)Z

    .line 88
    return-void
.end method

.method static synthetic a(Lcah;)Lbzv;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcah;->d:Lbzv;

    return-object v0
.end method

.method static synthetic b(Lcah;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcah;->c:I

    return v0
.end method

.method static synthetic c(Lcah;)Lcak;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcah;->h:Lcak;

    return-object v0
.end method

.method static synthetic d(Lcah;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    return-object v0
.end method

.method private d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 237
    sget-boolean v1, Lcah;->i:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_0
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz v1, :cond_1

    .line 240
    monitor-exit p0

    .line 249
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v1, p0, Lcah;->f:Lcaj;

    invoke-static {v1}, Lcaj;->a(Lcaj;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcah;->g:Lcai;

    invoke-static {v1}, Lcai;->a(Lcai;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    monitor-exit p0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v0, p0, Lcah;->d:Lbzv;

    iget v1, p0, Lcah;->c:I

    invoke-virtual {v0, v1}, Lbzv;->b(I)Lcah;

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcah;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcah;->f()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 582
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    return-void

    .line 584
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method static synthetic f(Lcah;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    sget-boolean v0, Lcah;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcah;->f:Lcaj;

    invoke-static {v0}, Lcaj;->a(Lcaj;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcah;->f:Lcaj;

    invoke-static {v0}, Lcaj;->b(Lcaj;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcah;->g:Lcai;

    invoke-static {v0}, Lcai;->a(Lcai;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcah;->g:Lcai;

    invoke-static {v0}, Lcai;->b(Lcai;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcah;->a()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, v0}, Lcah;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    if-nez v1, :cond_2

    iget-object v0, p0, Lcah;->d:Lbzv;

    iget v1, p0, Lcah;->c:I

    invoke-virtual {v0, v1}, Lbzv;->b(I)Lcah;

    goto :goto_1
.end method

.method static synthetic g(Lcah;)Lcak;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcah;->j:Lcak;

    return-object v0
.end method

.method static synthetic h(Lcah;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcah;->g:Lcai;

    invoke-static {v0}, Lcai;->b(Lcai;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcah;->g:Lcai;

    invoke-static {v0}, Lcai;->a(Lcai;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 3
    .parameter

    .prologue
    .line 562
    iget-wide v0, p0, Lcah;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcah;->b:J

    .line 563
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 564
    :cond_0
    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcah;->d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcah;->d:Lbzv;

    iget v1, p0, Lcah;->c:I

    invoke-virtual {v0, v1, p1}, Lbzv;->b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 109
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcah;->f:Lcaj;

    invoke-static {v1}, Lcaj;->a(Lcaj;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcah;->f:Lcaj;

    invoke-static {v1}, Lcaj;->b(Lcaj;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcah;->g:Lcai;

    .line 110
    invoke-static {v1}, Lcai;->a(Lcai;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcah;->g:Lcai;

    invoke-static {v1}, Lcai;->b(Lcai;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcah;->e:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .parameter

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcah;->d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcah;->d:Lbzv;

    iget v1, p0, Lcah;->c:I

    invoke-virtual {v0, v1, p1}, Lbzv;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lcah;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lcah;->d:Lbzv;

    iget-boolean v3, v3, Lbzv;->b:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcah;->h:Lcak;

    invoke-virtual {v0}, Lcak;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcah;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcah;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcah;->h:Lcak;

    invoke-virtual {v1}, Lcak;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcah;->h:Lcak;

    invoke-virtual {v0}, Lcak;->b()V

    .line 144
    iget-object v0, p0, Lcah;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcah;->e:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 145
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method final declared-synchronized c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lcah;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lhtg;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcah;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcah;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v0, p0, Lcah;->g:Lcai;

    return-object v0
.end method

.method final e()V
    .locals 2

    .prologue
    .line 289
    sget-boolean v0, Lcah;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_0
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcah;->f:Lcaj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcaj;->a(Lcaj;Z)Z

    .line 293
    invoke-virtual {p0}, Lcah;->a()Z

    move-result v0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcah;->d:Lbzv;

    iget v1, p0, Lcah;->c:I

    invoke-virtual {v0, v1}, Lbzv;->b(I)Lcah;

    .line 299
    :cond_1
    return-void

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
