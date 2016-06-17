.class public final Lgaa;
.super Ljava/lang/Object;
.source "GetDnsInfoDelegate.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/delegate/ApiDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/delegate/ApiDelegate",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public final getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    .prologue
    const/16 v3, 0x1388

    .line 29
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "http://ns.pb.cachecn.net/fast_tools/fetch_ldns_diag_client.php"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 31
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 32
    return-object v0
.end method

.method public final synthetic processResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 20
    new-instance v0, Lgab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgab;-><init>(B)V

    invoke-static {p1}, Lgab;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
