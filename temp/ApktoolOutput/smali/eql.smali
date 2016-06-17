.class public final Leql;
.super Ljava/lang/Object;
.source "IdentityDecoder.java"

# interfaces
.implements Leqj;


# instance fields
.field private a:J

.field private b:Z


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Leql;->b:Z

    .line 31
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v0, p1}, Leqk;->a(Ljava/nio/ByteBuffer;)V

    .line 27
    iget-wide v0, p0, Leql;->a:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Leql;->a:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Lcom/wandoujia/net/HttpException;

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    invoke-direct {v1, v2, v0}, Lcom/wandoujia/net/HttpException;-><init>(Lcom/wandoujia/net/HttpException$Type;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Leql;->b:Z

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Leql;->a:J

    return-wide v0
.end method
