.class final Lcac;
.super Lbxs;
.source "SpdyConnection.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

.field private synthetic c:Lbzv;


# direct methods
.method varargs constructor <init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcac;->c:Lbzv;

    iput p4, p0, Lcac;->a:I

    iput-object p5, p0, Lcac;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lcac;->c:Lbzv;

    invoke-static {v0}, Lbzv;->k(Lbzv;)Lcom/squareup/okhttp/internal/spdy/PushObserver;

    move-result-object v0

    iget v1, p0, Lcac;->a:I

    iget-object v2, p0, Lcac;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/PushObserver;->onReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 865
    iget-object v1, p0, Lcac;->c:Lbzv;

    monitor-enter v1

    .line 866
    :try_start_0
    iget-object v0, p0, Lcac;->c:Lbzv;

    invoke-static {v0}, Lbzv;->l(Lbzv;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcac;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 867
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
