.class public final Lfxp;
.super Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
.source "DeleteMyGiftBeanRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "http://adslist.wandoujia.com/gift/delete"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 33
    iget-object v0, p0, Lfxp;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must set cdkey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iget-object v0, p0, Lfxp;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must set uid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iget-object v0, p0, Lfxp;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must set wdjAuth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    const-string v0, "cdkeyId"

    iget-object v1, p0, Lfxp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "uid"

    iget-object v1, p0, Lfxp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "wdj_auth"

    iget-object v1, p0, Lfxp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
