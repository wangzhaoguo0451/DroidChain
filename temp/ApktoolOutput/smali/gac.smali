.class public final Lgac;
.super Lfwu;
.source "GetDownloadSpeedDelegate.java"


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lfwu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lfwu;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lgac;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v1, "Range"

    const-string v2, "bytes=0-131072"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.handle-redirects"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 24
    return-object v0
.end method

.method public final synthetic processResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-super {p0, p1}, Lfwu;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
