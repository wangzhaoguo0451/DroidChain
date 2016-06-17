.class public final Lbwy;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field final a:Lbwz;

.field public final b:Lbxq;

.field public c:Ljava/net/Socket;

.field d:Z

.field e:Lbyf;

.field f:Lbzv;

.field public g:Lcom/squareup/okhttp/Protocol;

.field h:J

.field public i:Lbxe;

.field j:I

.field k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbwz;Lbxq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbwy;->d:Z

    .line 78
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    .line 91
    iput-object p1, p0, Lbwy;->a:Lbwz;

    .line 92
    iput-object p2, p0, Lbwy;->b:Lbxq;

    .line 93
    return-void
.end method


# virtual methods
.method final a(Lbxj;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 393
    new-instance v4, Lbyf;

    iget-object v0, p0, Lbwy;->a:Lbwz;

    iget-object v1, p0, Lbwy;->c:Ljava/net/Socket;

    invoke-direct {v4, v0, p0, v1}, Lbyf;-><init>(Lbwz;Lbwy;Ljava/net/Socket;)V

    .line 394
    invoke-virtual {v4, p2, p3}, Lbyf;->a(II)V

    .line 395
    invoke-virtual {p1}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "CONNECT "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 398
    :cond_0
    iget-object v0, p1, Lbxj;->c:Lbxf;

    invoke-virtual {v4, v0, v5}, Lbyf;->a(Lbxf;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v4}, Lbyf;->a()V

    .line 400
    invoke-virtual {v4}, Lbyf;->c()Lbxo;

    move-result-object v0

    iput-object p1, v0, Lbxo;->a:Lbxj;

    invoke-virtual {v0}, Lbxo;->a()Lbxn;

    move-result-object v6

    .line 403
    invoke-static {v6}, Lbyt;->a(Lbxn;)J

    move-result-wide v0

    .line 404
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_1

    move-wide v0, v2

    .line 407
    :cond_1
    invoke-virtual {v4, v0, v1}, Lbyf;->a(J)Lhth;

    move-result-object v0

    .line 408
    const v1, 0x7fffffff

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v7}, Lbya;->a(Lhth;ILjava/util/concurrent/TimeUnit;)Z

    .line 409
    invoke-interface {v0}, Lhth;->close()V

    .line 411
    iget v0, v6, Lbxn;->c:I

    sparse-switch v0, :sswitch_data_0

    .line 429
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    iget v2, v6, Lbxn;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :sswitch_0
    iget-object v0, v4, Lbyf;->c:Lhss;

    invoke-interface {v0}, Lhss;->b()Lhsp;

    move-result-object v0

    iget-wide v0, v0, Lhsp;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 418
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :sswitch_1
    iget-object v0, p0, Lbwy;->b:Lbxq;

    iget-object v0, v0, Lbxq;->a:Lbwp;

    iget-object v0, v0, Lbwp;->h:Lcom/squareup/okhttp/Authenticator;

    iget-object v1, p0, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->b:Ljava/net/Proxy;

    invoke-static {v0, v6, v1}, Lbyt;->a(Lcom/squareup/okhttp/Authenticator;Lbxn;Ljava/net/Proxy;)Lbxj;

    move-result-object p1

    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_2
    return-void

    .line 411
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0}, Lbwy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lbwy;->a:Lbwz;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lbwy;->k:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Connection already has an owner!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_1
    :try_start_1
    iput-object p1, p0, Lbwy;->k:Ljava/lang/Object;

    .line 106
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final a()Z
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lbwy;->a:Lbwz;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lbwy;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    monitor-exit v1

    .line 123
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbwy;->k:Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lbwy;->f:Lbzv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwy;->f:Lbzv;

    invoke-virtual {v0}, Lbzv;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()J
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lbwy;->f:Lbzv;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lbwy;->h:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lbwy;->f:Lbzv;

    invoke-virtual {v0}, Lbzv;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lbwy;->f:Lbzv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->a:Lbwp;

    iget-object v1, v1, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->a:Lbwp;

    iget v1, v1, Lbwp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->c:Ljava/net/InetSocketAddress;

    .line 441
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lbwy;->i:Lbxe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwy;->i:Lbxe;

    .line 443
    iget-object v0, v0, Lbxe;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
