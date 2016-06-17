.class public final Lbyx;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field final a:Lbwp;

.field final b:Ljava/net/URI;

.field final c:Lbxz;

.field d:Ljava/net/Proxy;

.field e:Ljava/net/InetSocketAddress;

.field f:Lbxb;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbxb;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbxq;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/squareup/okhttp/internal/Network;

.field private final o:Lbxh;

.field private final p:Lbxj;


# direct methods
.method public constructor <init>(Lbwp;Ljava/net/URI;Lbxh;Lbxj;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbyx;->g:Ljava/util/List;

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbyx;->i:Ljava/util/List;

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbyx;->k:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbyx;->m:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lbyx;->a:Lbwp;

    .line 78
    iput-object p2, p0, Lbyx;->b:Ljava/net/URI;

    .line 79
    iput-object p3, p0, Lbyx;->o:Lbxh;

    .line 80
    sget-object v0, Lbxr;->b:Lbxr;

    invoke-virtual {v0, p3}, Lbxr;->b(Lbxh;)Lbxz;

    move-result-object v0

    iput-object v0, p0, Lbyx;->c:Lbxz;

    .line 81
    sget-object v0, Lbxr;->b:Lbxr;

    invoke-virtual {v0, p3}, Lbxr;->c(Lbxh;)Lcom/squareup/okhttp/internal/Network;

    move-result-object v0

    iput-object v0, p0, Lbyx;->n:Lcom/squareup/okhttp/internal/Network;

    .line 82
    iput-object p4, p0, Lbyx;->p:Lbxj;

    .line 84
    iget-object v0, p1, Lbwp;->a:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbyx;->g:Ljava/util/List;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lbyx;->h:I

    .line 85
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbyx;->g:Ljava/util/List;

    iget-object v0, p0, Lbyx;->o:Lbxh;

    iget-object v0, v0, Lbxh;->j:Ljava/net/ProxySelector;

    invoke-virtual {v0, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbyx;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lbyx;->g:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbyx;->g:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lbxq;Ljava/io/IOException;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p1, Lbxq;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbyx;->a:Lbwp;

    iget-object v0, v0, Lbwp;->k:Ljava/net/ProxySelector;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lbyx;->a:Lbwp;

    iget-object v0, v0, Lbwp;->k:Ljava/net/ProxySelector;

    iget-object v1, p0, Lbyx;->b:Ljava/net/URI;

    iget-object v2, p1, Lbxq;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lbyx;->c:Lbxz;

    invoke-virtual {v0, p1}, Lbxz;->a(Lbxq;)V

    .line 151
    instance-of v0, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljavax/net/ssl/SSLProtocolException;

    if-nez v0, :cond_1

    .line 152
    :goto_0
    iget v0, p0, Lbyx;->l:I

    iget-object v1, p0, Lbyx;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lbyx;->k:Ljava/util/List;

    iget v1, p0, Lbyx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbyx;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbxb;

    .line 155
    invoke-virtual {p0, v4}, Lbyx;->a(Lbxb;)Z

    move-result v5

    .line 156
    new-instance v0, Lbxq;

    iget-object v1, p0, Lbyx;->a:Lbwp;

    iget-object v2, p0, Lbyx;->d:Ljava/net/Proxy;

    iget-object v3, p0, Lbyx;->e:Ljava/net/InetSocketAddress;

    invoke-direct/range {v0 .. v5}, Lbxq;-><init>(Lbwp;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lbxb;Z)V

    .line 158
    iget-object v1, p0, Lbyx;->c:Lbxz;

    invoke-virtual {v1, v0}, Lbxz;->a(Lbxq;)V

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method final a(Ljava/net/Proxy;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbyx;->i:Ljava/util/List;

    .line 204
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 205
    :cond_0
    iget-object v0, p0, Lbyx;->a:Lbwp;

    iget-object v1, v0, Lbwp;->b:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lbyx;->b:Ljava/net/URI;

    invoke-static {v0}, Lbya;->a(Ljava/net/URI;)I

    move-result v0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 218
    :goto_0
    if-lez v1, :cond_1

    const v3, 0xffff

    if-le v1, v3, :cond_5

    .line 219
    :cond_1
    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No route to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; port is out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 209
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_3
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 214
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_1
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 224
    :cond_5
    iget-object v3, p0, Lbyx;->n:Lcom/squareup/okhttp/internal/Network;

    invoke-interface {v3, v0}, Lcom/squareup/okhttp/internal/Network;->resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    .line 225
    iget-object v6, p0, Lbyx;->i:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v5, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    :cond_6
    iput v2, p0, Lbyx;->j:I

    .line 228
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lbyx;->h:I

    iget-object v1, p0, Lbyx;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lbxb;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lbyx;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 133
    iget-boolean v1, p1, Lbxb;->d:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lbyx;->j:I

    iget-object v1, p0, Lbyx;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbyx;->k:Ljava/util/List;

    .line 267
    iget-object v0, p0, Lbyx;->a:Lbwp;

    iget-object v3, v0, Lbwp;->j:Ljava/util/List;

    .line 268
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    .line 269
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxb;

    .line 270
    iget-object v5, p0, Lbyx;->p:Lbxj;

    invoke-virtual {v5}, Lbxj;->e()Z

    move-result v5

    iget-boolean v6, v0, Lbxb;->d:Z

    if-ne v5, v6, :cond_0

    .line 271
    iget-object v5, p0, Lbyx;->k:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 274
    :cond_1
    iput v2, p0, Lbyx;->l:I

    .line 275
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lbyx;->l:I

    iget-object v1, p0, Lbyx;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lbyx;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
