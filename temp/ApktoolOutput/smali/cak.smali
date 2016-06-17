.class final Lcak;
.super Lhsk;
.source "SpdyStream.java"


# instance fields
.field private synthetic d:Lcah;


# direct methods
.method constructor <init>(Lcah;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcak;->d:Lcah;

    invoke-direct {p0}, Lhsk;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcak;->d:Lcah;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcah;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 596
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Lcak;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    return-void
.end method
