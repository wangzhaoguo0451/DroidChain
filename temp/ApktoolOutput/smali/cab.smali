.class final Lcab;
.super Lbxs;
.source "SpdyConnection.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lhsp;

.field private synthetic c:I

.field private synthetic d:Z

.field private synthetic e:Lbzv;


# direct methods
.method varargs constructor <init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILhsp;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcab;->e:Lbzv;

    iput p4, p0, Lcab;->a:I

    iput-object p5, p0, Lcab;->b:Lhsp;

    iput p6, p0, Lcab;->c:I

    iput-boolean p7, p0, Lcab;->d:Z

    invoke-direct {p0, p2, p3}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 848
    :try_start_0
    iget-object v0, p0, Lcab;->e:Lbzv;

    invoke-static {v0}, Lbzv;->k(Lbzv;)Lcom/squareup/okhttp/internal/spdy/PushObserver;

    move-result-object v0

    iget v1, p0, Lcab;->a:I

    iget-object v2, p0, Lcab;->b:Lhsp;

    iget v3, p0, Lcab;->c:I

    iget-boolean v4, p0, Lcab;->d:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/PushObserver;->onData(ILhss;IZ)Z

    move-result v0

    .line 849
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcab;->e:Lbzv;

    iget-object v1, v1, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget v2, p0, Lcab;->a:I

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 850
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcab;->d:Z

    if-eqz v0, :cond_2

    .line 851
    :cond_1
    iget-object v1, p0, Lcab;->e:Lbzv;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :try_start_1
    iget-object v0, p0, Lcab;->e:Lbzv;

    invoke-static {v0}, Lbzv;->l(Lbzv;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcab;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 853
    monitor-exit v1

    .line 857
    :cond_2
    :goto_0
    return-void

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 857
    :catch_0
    move-exception v0

    goto :goto_0
.end method
