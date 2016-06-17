.class public final Lfxs;
.super Lfxm;
.source "GetGiftBeanCdkeyRequsetBuilder.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lfxm;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "http://adslist.wandoujia.com/gift/receive.json"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 46
    iget-object v0, p0, Lfxs;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lfxs;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set uid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iget-object v0, p0, Lfxs;->c:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set gift id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    iget-object v0, p0, Lfxs;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set wdj Auth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_3
    const-string v0, "pn"

    iget-object v1, p0, Lfxs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "uid"

    iget-object v1, p0, Lfxs;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "giftId"

    iget-object v1, p0, Lfxs;->c:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "wdj_auth"

    iget-object v1, p0, Lfxs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
