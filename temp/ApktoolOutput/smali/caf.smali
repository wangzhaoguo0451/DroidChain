.class final Lcaf;
.super Lbxs;
.source "SpdyConnection.java"


# instance fields
.field private synthetic a:Lcah;

.field private synthetic b:Lcae;


# direct methods
.method varargs constructor <init>(Lcae;Ljava/lang/String;[Ljava/lang/Object;Lcah;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcaf;->b:Lcae;

    iput-object p4, p0, Lcaf;->a:Lcah;

    invoke-direct {p0, p2, p3}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 642
    :try_start_0
    iget-object v0, p0, Lcaf;->b:Lcae;

    iget-object v0, v0, Lcae;->a:Lbzv;

    invoke-static {v0}, Lbzv;->f(Lbzv;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    move-result-object v0

    iget-object v1, p0, Lcaf;->a:Lcah;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;->receive(Lcah;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 644
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
