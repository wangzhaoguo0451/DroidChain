.class final Lepo;
.super Ljava/lang/Object;
.source "AsyncSSLSocket.java"

# interfaces
.implements Lepr;


# instance fields
.field private synthetic a:Lepm;


# direct methods
.method constructor <init>(Lepm;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lepo;->a:Lepm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->a(Lepm;)V

    .line 91
    return-void
.end method

.method public final a(Lcom/wandoujia/net/HttpException;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->b(Lepm;)Lepr;

    move-result-object v0

    invoke-interface {v0, p1}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    .line 96
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->c(Lepm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0, p1}, Lepm;->a(Lepm;Ljava/nio/ByteBuffer;)V

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0, p1}, Lepm;->b(Lepm;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->e(Lepm;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    iget-object v1, p0, Lepo;->a:Lepm;

    invoke-static {v1}, Lepm;->b(Lepm;)Lepr;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->b(Lepm;)Lepr;

    move-result-object v0

    invoke-interface {v0}, Lepr;->b()V

    .line 101
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->c(Lepm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->d(Lepm;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lepo;->a:Lepm;

    iget-object v1, p0, Lepo;->a:Lepm;

    invoke-static {v1}, Lepm;->d(Lepm;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepm;->a(Ljava/nio/ByteBuffer;)V

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->b(Lepm;)Lepr;

    move-result-object v0

    invoke-interface {v0}, Lepr;->c()V

    goto :goto_0

    .line 113
    :cond_1
    :try_start_0
    iget-object v0, p0, Lepo;->a:Lepm;

    invoke-static {v0}, Lepm;->e(Lepm;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    iget-object v1, p0, Lepo;->a:Lepm;

    invoke-static {v1}, Lepm;->b(Lepm;)Lepr;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/net/HttpException;

    sget-object v3, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lepr;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method
