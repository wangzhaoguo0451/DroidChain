.class public final Lgap;
.super Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
.source "GetConfigInfoRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getTimeout()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x1388

    return v0
.end method

.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "http://netcheck.wandoujia.com/config"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 20
    const-string v0, "udid"

    iget-object v1, p0, Lgap;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
