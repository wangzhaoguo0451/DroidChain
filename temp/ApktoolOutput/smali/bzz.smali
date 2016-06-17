.class final Lbzz;
.super Lbxs;
.source "SpdyConnection.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lbzv;


# direct methods
.method varargs constructor <init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lbzz;->c:Lbzv;

    iput p4, p0, Lbzz;->a:I

    iput-object p5, p0, Lbzz;->b:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lbzz;->c:Lbzv;

    invoke-static {v0}, Lbzv;->k(Lbzv;)Lcom/squareup/okhttp/internal/spdy/PushObserver;

    move-result-object v0

    iget v1, p0, Lbzz;->a:I

    iget-object v2, p0, Lbzz;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    .line 805
    if-eqz v0, :cond_0

    .line 806
    :try_start_0
    iget-object v0, p0, Lbzz;->c:Lbzv;

    iget-object v0, v0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget v1, p0, Lbzz;->a:I

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 807
    iget-object v1, p0, Lbzz;->c:Lbzv;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :try_start_1
    iget-object v0, p0, Lbzz;->c:Lbzv;

    invoke-static {v0}, Lbzv;->l(Lbzv;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lbzz;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 809
    monitor-exit v1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 813
    :catch_0
    move-exception v0

    goto :goto_0
.end method
