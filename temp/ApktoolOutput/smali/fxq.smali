.class public Lfxq;
.super Lfxw;
.source "GetAppsRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lfxw;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/wandoujia/p4/http/request/OptionFields;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setHeaders(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 3
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lfxw;->setHeaders(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 21
    const-string v0, "Cookie"

    invoke-virtual {p1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->get(Ljava/lang/String;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    invoke-static {}, Lgdq;->a()Lgdq;

    move-result-object v0

    invoke-virtual {v0}, Lgdq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, "Cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lfxw;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 33
    invoke-virtual {p0}, Lfxq;->a()Lcom/wandoujia/p4/http/request/OptionFields;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "opt_fields"

    invoke-virtual {v0}, Lcom/wandoujia/p4/http/request/OptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
