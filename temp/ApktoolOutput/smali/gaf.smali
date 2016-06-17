.class public final Lgaf;
.super Lfwu;
.source "PostNetCheckInfosDelegate.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lfwu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lfwu;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "http://netcheck.wandoujia.com/P3data"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "udid"

    iget-object v4, p0, Lgaf;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "debugfile"

    iget-object v4, p0, Lgaf;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final synthetic processResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lfwu;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
