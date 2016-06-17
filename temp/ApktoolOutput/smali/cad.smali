.class public final Lcad;
.super Ljava/lang/Object;
.source "SpdyConnection.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/net/Socket;

.field c:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

.field public d:Lcom/squareup/okhttp/Protocol;

.field e:Lcom/squareup/okhttp/internal/spdy/PushObserver;

.field f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    iput-object v0, p0, Lcad;->c:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    .line 517
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcad;->d:Lcom/squareup/okhttp/Protocol;

    .line 518
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/PushObserver;->CANCEL:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    iput-object v0, p0, Lcad;->e:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    .line 530
    iput-object p1, p0, Lcad;->a:Ljava/lang/String;

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcad;->f:Z

    .line 532
    iput-object p2, p0, Lcad;->b:Ljava/net/Socket;

    .line 533
    return-void
.end method
