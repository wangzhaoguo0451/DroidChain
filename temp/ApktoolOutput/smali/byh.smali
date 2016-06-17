.class final Lbyh;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lhtg;


# instance fields
.field private a:Z

.field private synthetic b:Lbyf;


# direct methods
.method private constructor <init>(Lbyf;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lbyh;->b:Lbyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbyf;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lbyh;-><init>(Lbyf;)V

    return-void
.end method


# virtual methods
.method public final a()Lhti;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lbyh;->b:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    invoke-interface {v0}, Lhsr;->a()Lhti;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Lhsp;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 310
    iget-boolean v0, p0, Lbyh;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 317
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lbyh;->b:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    invoke-interface {v0, p2, p3}, Lhsr;->h(J)Lhsr;

    .line 314
    iget-object v0, p0, Lbyh;->b:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    .line 315
    iget-object v0, p0, Lbyh;->b:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    invoke-interface {v0, p1, p2, p3}, Lhsr;->a_(Lhsp;J)V

    .line 316
    iget-object v0, p0, Lbyh;->b:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbyh;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lbyh;->a:Z

    .line 327
    iget-object v0, p0, Lbyh;->b:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lhsr;->b(Ljava/lang/String;)Lhsr;

    .line 328
    iget-object v0, p0, Lbyh;->b:Lbyf;

    const/4 v1, 0x3

    iput v1, v0, Lbyf;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbyh;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbyh;->b:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
