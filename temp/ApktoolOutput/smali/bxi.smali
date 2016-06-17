.class final Lbxi;
.super Lbxr;
.source "OkHttpClient.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lbxr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbxh;)Lcom/squareup/okhttp/internal/InternalCache;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p1, Lbxh;->l:Lcom/squareup/okhttp/internal/InternalCache;

    return-object v0
.end method

.method public final a(Lbwy;Lbyo;)Lcom/squareup/okhttp/internal/http/Transport;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p1, Lbwy;->f:Lbzv;

    if-eqz v0, :cond_0

    new-instance v0, Lbyy;

    iget-object v1, p1, Lbwy;->f:Lbzv;

    invoke-direct {v0, p2, v1}, Lbyy;-><init>(Lbyo;Lbzv;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbys;

    iget-object v1, p1, Lbwy;->e:Lbyf;

    invoke-direct {v0, p2, v1}, Lbys;-><init>(Lbyo;Lbyf;)V

    goto :goto_0
.end method

.method public final a(Lbwy;Lcom/squareup/okhttp/Protocol;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p1, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    .line 80
    return-void
.end method

.method public final a(Lbwy;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Lbwy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p1, Lbwy;->a:Lbwz;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lbwy;->k:Ljava/lang/Object;

    if-eq v0, p2, :cond_1

    monitor-exit v1

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lbwy;->k:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lbwz;Lbwy;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p2}, Lbwy;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lbwy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lbwy;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lbwy;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbya;->a(Ljava/net/Socket;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    invoke-static {}, Lbxv;->a()Lbxv;

    move-result-object v0

    iget-object v1, p2, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lbxv;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2}, Lbwz;->a(Lbwy;)V

    iget v0, p2, Lbwy;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lbwy;->j:I

    iget-object v0, p2, Lbwy;->f:Lbzv;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lbxv;->a()Lbxv;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to untagSocket(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbxv;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lbwy;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbya;->a(Ljava/net/Socket;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p2, Lbwy;->h:J

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lbxg;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 91
    const-string v0, ":"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lbxg;->b(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbxg;->b(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Lbxg;->b(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    goto :goto_0
.end method

.method public final a(Lbxh;Lbwy;Lbyo;Lbxj;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v10, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-virtual {p2, p3}, Lbwy;->a(Ljava/lang/Object;)V

    iget-boolean v0, p2, Lbwy;->d:Z

    if-nez v0, :cond_16

    iget-object v0, p2, Lbwy;->b:Lbxq;

    iget-object v1, v0, Lbxq;->a:Lbwp;

    iget-object v1, v1, Lbwp;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbxq;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    iget v1, p1, Lbxh;->w:I

    iget v5, p1, Lbxh;->x:I

    iget v6, p1, Lbxh;->y:I

    iget-boolean v7, p2, Lbwy;->d:Z

    if-eqz v7, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lbxj;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lbya;->a(Ljava/net/URL;)I

    move-result v5

    const-string v0, "https"

    invoke-static {v0}, Lbya;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_4

    move-object v0, v1

    :goto_2
    new-instance v6, Lbxk;

    invoke-direct {v6}, Lbxk;-><init>()V

    new-instance v7, Ljava/net/URL;

    const-string v8, "https"

    const-string v9, "/"

    invoke-direct {v7, v8, v1, v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lbxk;->a(Ljava/net/URL;)Lbxk;

    move-result-object v1

    const-string v5, "Host"

    invoke-virtual {v1, v5, v0}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v1, v5}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p4, v1}, Lbxj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "User-Agent"

    invoke-virtual {v0, v5, v1}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    :cond_2
    const-string v1, "Proxy-Authorization"

    invoke-virtual {p4, v1}, Lbxj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "Proxy-Authorization"

    invoke-virtual {v0, v5, v1}, Lbxk;->a(Ljava/lang/String;Ljava/lang/String;)Lbxk;

    :cond_3
    invoke-virtual {v0}, Lbxk;->a()Lbxj;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v7, p2, Lbwy;->b:Lbxq;

    iget-object v7, v7, Lbxq;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v7, v8, :cond_6

    iget-object v7, p2, Lbwy;->b:Lbxq;

    iget-object v7, v7, Lbxq;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_d

    :cond_6
    iget-object v7, p2, Lbwy;->b:Lbxq;

    iget-object v7, v7, Lbxq;->a:Lbwp;

    iget-object v7, v7, Lbwp;->d:Ljavax/net/SocketFactory;

    invoke-virtual {v7}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p2, Lbwy;->c:Ljava/net/Socket;

    :goto_3
    iget-object v7, p2, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v7, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {}, Lbxv;->a()Lbxv;

    move-result-object v7

    iget-object v8, p2, Lbwy;->c:Ljava/net/Socket;

    iget-object v9, p2, Lbwy;->b:Lbxq;

    iget-object v9, v9, Lbxq;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v8, v9, v1}, Lbxv;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    iget-object v1, p2, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->a:Lbwp;

    iget-object v1, v1, Lbwp;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_13

    invoke-static {}, Lbxv;->a()Lbxv;

    move-result-object v7

    if-eqz v0, :cond_7

    invoke-virtual {p2, v0, v5, v6}, Lbwy;->a(Lbxj;II)V

    :cond_7
    iget-object v0, p2, Lbwy;->b:Lbxq;

    iget-object v0, v0, Lbxq;->a:Lbwp;

    iget-object v0, v0, Lbwp;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p2, Lbwy;->c:Ljava/net/Socket;

    iget-object v5, p2, Lbwy;->b:Lbxq;

    iget-object v5, v5, Lbxq;->a:Lbwp;

    iget-object v5, v5, Lbwp;->b:Ljava/lang/String;

    iget-object v6, p2, Lbwy;->b:Lbxq;

    iget-object v6, v6, Lbxq;->a:Lbwp;

    iget v6, v6, Lbwp;->c:I

    invoke-virtual {v0, v1, v5, v6, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p2, Lbwy;->c:Ljava/net/Socket;

    iget-object v0, p2, Lbwy;->c:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p2, Lbwy;->b:Lbxq;

    iget-object v5, v1, Lbxq;->d:Lbxb;

    iget-object v6, p2, Lbwy;->b:Lbxq;

    iget-object v1, v5, Lbxb;->e:[Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    iget-object v8, v5, Lbxb;->e:[Ljava/lang/String;

    invoke-static {v2, v8, v1}, Lbya;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v2, v1

    :cond_8
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const-class v8, Ljava/lang/String;

    iget-object v9, v5, Lbxb;->f:[Ljava/lang/String;

    invoke-static {v8, v9, v1}, Lbya;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v8, Lbxc;

    invoke-direct {v8, v5}, Lbxc;-><init>(Lbxb;)V

    invoke-virtual {v8, v2}, Lbxc;->a([Ljava/lang/String;)Lbxc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbxc;->b([Ljava/lang/String;)Lbxc;

    move-result-object v1

    invoke-virtual {v1}, Lbxc;->b()Lbxb;

    move-result-object v5

    iget-object v1, v5, Lbxb;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    iget-object v1, v5, Lbxb;->e:[Ljava/lang/String;

    iget-boolean v2, v6, Lbxq;->e:Z

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v8, "TLS_FALLBACK_SCSV"

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_e

    :goto_4
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    array-length v8, v1

    invoke-static {v1, v4, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    const-string v8, "TLS_FALLBACK_SCSV"

    aput-object v8, v2, v1

    move-object v1, v2

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lbxv;->a()Lbxv;

    move-result-object v1

    iget-boolean v2, v5, Lbxb;->g:Z

    if-eqz v2, :cond_b

    iget-object v2, v6, Lbxq;->a:Lbwp;

    iget-object v2, v2, Lbwp;->b:Ljava/lang/String;

    iget-object v5, v6, Lbxq;->a:Lbwp;

    iget-object v5, v5, Lbwp;->i:Ljava/util/List;

    invoke-virtual {v1, v0, v2, v5}, Lbxv;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_b
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v1, p2, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->d:Lbxb;

    iget-boolean v1, v1, Lbxb;->g:Z

    if-eqz v1, :cond_c

    invoke-virtual {v7, v0}, Lbxv;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    iput-object v1, p2, Lbwy;->g:Lcom/squareup/okhttp/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    invoke-virtual {v7, v0}, Lbxv;->a(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lbxe;->a(Ljavax/net/ssl/SSLSession;)Lbxe;

    move-result-object v1

    iput-object v1, p2, Lbwy;->i:Lbxe;

    iget-object v1, p2, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->a:Lbwp;

    iget-object v1, v1, Lbwp;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p2, Lbwy;->b:Lbxq;

    iget-object v2, v2, Lbxq;->a:Lbwp;

    iget-object v2, v2, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hostname "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lbwy;->b:Lbxq;

    iget-object v3, v3, Lbxq;->a:Lbwp;

    iget-object v3, v3, Lbwp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not verified:\n    certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lbwv;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    DN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    subjectAltNames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcam;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v7, Ljava/net/Socket;

    iget-object v8, p2, Lbwy;->b:Lbxq;

    iget-object v8, v8, Lbxq;->b:Ljava/net/Proxy;

    invoke-direct {v7, v8}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v7, p2, Lbwy;->c:Ljava/net/Socket;

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    invoke-virtual {v7, v0}, Lbxv;->a(Ljavax/net/ssl/SSLSocket;)V

    throw v1

    :cond_f
    iget-object v1, p2, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->a:Lbwp;

    iget-object v1, v1, Lbwp;->g:Lbwv;

    iget-object v2, p2, Lbwy;->b:Lbxq;

    iget-object v2, v2, Lbxq;->a:Lbwp;

    iget-object v2, v2, Lbwp;->b:Ljava/lang/String;

    iget-object v5, p2, Lbwy;->i:Lbxe;

    iget-object v5, v5, Lbxe;->b:Ljava/util/List;

    invoke-virtual {v1, v2, v5}, Lbwv;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p2, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    sget-object v2, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-eq v1, v2, :cond_10

    iget-object v1, p2, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v2, :cond_12

    :cond_10
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    new-instance v0, Lcad;

    iget-object v1, p2, Lbwy;->b:Lbxq;

    iget-object v1, v1, Lbxq;->a:Lbwp;

    iget-object v1, v1, Lbwp;->b:Ljava/lang/String;

    iget-object v2, p2, Lbwy;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcad;-><init>(Ljava/lang/String;Ljava/net/Socket;)V

    iget-object v1, p2, Lbwy;->g:Lcom/squareup/okhttp/Protocol;

    iput-object v1, v0, Lcad;->d:Lcom/squareup/okhttp/Protocol;

    new-instance v1, Lbzv;

    invoke-direct {v1, v0, v4}, Lbzv;-><init>(Lcad;B)V

    iput-object v1, p2, Lbwy;->f:Lbzv;

    iget-object v0, p2, Lbwy;->f:Lbzv;

    iget-object v1, v0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->connectionPreface()V

    iget-object v1, v0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget-object v2, v0, Lbzv;->e:Lbzr;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->settings(Lbzr;)V

    iget-object v1, v0, Lbzv;->e:Lbzr;

    invoke-virtual {v1}, Lbzr;->b()I

    move-result v1

    if-eq v1, v10, :cond_11

    iget-object v0, v0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    sub-int/2addr v1, v10

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->windowUpdate(IJ)V

    :cond_11
    :goto_5
    iput-boolean v3, p2, Lbwy;->d:Z

    invoke-virtual {p2}, Lbwy;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, p1, Lbxh;->r:Lbwz;

    invoke-virtual {p2}, Lbwy;->e()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    new-instance v0, Lbyf;

    iget-object v1, p2, Lbwy;->a:Lbwz;

    iget-object v2, p2, Lbwy;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p2, v2}, Lbyf;-><init>(Lbwz;Lbwy;Ljava/net/Socket;)V

    iput-object v0, p2, Lbwy;->e:Lbyf;

    goto :goto_5

    :cond_13
    new-instance v0, Lbyf;

    iget-object v1, p2, Lbwy;->a:Lbwz;

    iget-object v2, p2, Lbwy;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p2, v2}, Lbyf;-><init>(Lbwz;Lbwy;Ljava/net/Socket;)V

    iput-object v0, p2, Lbwy;->e:Lbyf;

    goto :goto_5

    :cond_14
    invoke-virtual {p2}, Lbwy;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p2}, Lbwz;->a(Lbwy;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_15
    iget-object v0, p1, Lbxh;->c:Lbxz;

    iget-object v1, p2, Lbwy;->b:Lbxq;

    invoke-virtual {v0, v1}, Lbxz;->b(Lbxq;)V

    :cond_16
    iget v0, p1, Lbxh;->x:I

    iget v1, p1, Lbxh;->y:I

    iget-boolean v2, p2, Lbwy;->d:Z

    if-nez v2, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTimeouts - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_17
    iget-object v2, p2, Lbwy;->e:Lbyf;

    if-eqz v2, :cond_18

    iget-object v2, p2, Lbwy;->c:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p2, Lbwy;->e:Lbyf;

    invoke-virtual {v2, v0, v1}, Lbyf;->a(II)V

    .line 121
    :cond_18
    return-void
.end method

.method public final a(Lbwy;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-virtual {p1}, Lbwy;->a()Z

    move-result v0

    return v0
.end method

.method public final b(Lbwy;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p1, Lbwy;->j:I

    return v0
.end method

.method public final b(Lbxh;)Lbxz;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p1, Lbxh;->c:Lbxz;

    return-object v0
.end method

.method public final b(Lbwy;Lbyo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Lbwy;->a(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public final c(Lbxh;)Lcom/squareup/okhttp/internal/Network;
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-static {p1}, Lbxh;->a(Lbxh;)Lcom/squareup/okhttp/internal/Network;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lbwy;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p1, Lbwy;->e:Lbyf;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbwy;->e:Lbyf;

    invoke-virtual {v0}, Lbyf;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
