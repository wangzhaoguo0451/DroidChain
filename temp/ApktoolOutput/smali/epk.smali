.class public final Lepk;
.super Ljava/lang/Object;
.source "AsyncRawSocket.java"

# interfaces
.implements Lepq;


# instance fields
.field protected final a:Lepr;

.field private b:Ljava/nio/channels/SocketChannel;

.field private c:Ljava/nio/channels/SelectionKey;

.field private d:Ljava/nio/ByteBuffer;

.field private e:Ljava/nio/ByteBuffer;

.field private f:Z


# direct methods
.method public constructor <init>(Lepr;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lepk;->a:Lepr;

    .line 24
    const/high16 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lepk;->d:Ljava/nio/ByteBuffer;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lepk;->f:Z

    .line 51
    iget-object v0, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 56
    :try_start_0
    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/net/InetSocketAddress;)V
    .locals 4
    .parameter

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    .line 31
    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 32
    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    invoke-static {}, Leqe;->a()Leqe;

    move-result-object v1

    iget-object v1, v1, Leqe;->a:Ljava/nio/channels/Selector;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    .line 34
    iget-object v0, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lepk;->a:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->CONNECT_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lepk;->e:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {p0}, Lepk;->d()V

    .line 45
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 4

    .prologue
    .line 68
    iget-boolean v0, p0, Lepk;->f:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lepk;->a:Lepr;

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    const-string v3, "NOT READY TO READ"

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    .line 86
    :goto_0
    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lepk;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    if-gez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lepk;->a()V

    .line 82
    iget-object v0, p0, Lepk;->a:Lepr;

    invoke-interface {v0}, Lepr;->b()V

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lepk;->a:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lepk;->a:Lepr;

    iget-object v1, p0, Lepk;->d:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lepr;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method final d()V
    .locals 4

    .prologue
    .line 89
    iget-boolean v0, p0, Lepk;->f:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lepk;->a:Lepr;

    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    const-string v3, "NOT READY TO WRITE"

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    .line 112
    :goto_0
    return-void

    .line 95
    :cond_0
    :try_start_0
    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lepk;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 96
    iget-object v0, p0, Lepk;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    iget-object v1, p0, Lepk;->a:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0

    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 100
    invoke-static {}, Leqe;->a()Leqe;

    move-result-object v0

    new-instance v1, Lepl;

    invoke-direct {v1, p0}, Lepl;-><init>(Lepk;)V

    invoke-virtual {v0, v1}, Leqe;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    iget-object v1, p0, Lepk;->a:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method

.method final e()V
    .locals 4

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lepk;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 117
    iget-object v0, p0, Lepk;->c:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lepk;->f:Z

    .line 119
    iget-object v0, p0, Lepk;->a:Lepr;

    invoke-interface {v0}, Lepr;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lepk;->a:Lepr;

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->CONNECT_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method
