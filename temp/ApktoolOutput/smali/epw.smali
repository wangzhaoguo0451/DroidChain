.class public final Lepw;
.super Ljava/lang/Object;
.source "HttpTransaction.java"

# interfaces
.implements Lepr;


# instance fields
.field private synthetic a:Lcom/wandoujia/net/HttpTransaction;


# direct methods
.method public constructor <init>(Lcom/wandoujia/net/HttpTransaction;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/net/HttpTransaction;->j:J

    .line 104
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    iget-object v0, v0, Lcom/wandoujia/net/HttpTransaction;->d:Lepb;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lepb;->a(I[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-static {v0}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpTransaction;)V

    .line 106
    return-void
.end method

.method public final a(Lcom/wandoujia/net/HttpException;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-virtual {v0, p1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpException;)V

    .line 111
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/net/HttpTransaction;->j:J

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 133
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-static {v0, p1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpTransaction;Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 135
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    iget-object v0, v0, Lcom/wandoujia/net/HttpTransaction;->g:Leqj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    iget-object v0, v0, Lcom/wandoujia/net/HttpTransaction;->g:Leqj;

    instance-of v0, v0, Leql;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/net/HttpTransaction;->a(Lcom/wandoujia/net/HttpTransaction;Ljava/nio/ByteBuffer;)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/wandoujia/net/HttpException;

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    const-string v2, "socket disconnect"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lepw;->a(Lcom/wandoujia/net/HttpException;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/net/HttpTransaction;->j:J

    .line 126
    iget-object v0, p0, Lepw;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-static {v0}, Lcom/wandoujia/net/HttpTransaction;->b(Lcom/wandoujia/net/HttpTransaction;)V

    .line 127
    return-void
.end method
