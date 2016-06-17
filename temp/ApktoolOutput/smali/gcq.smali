.class public final Lgcq;
.super Lgcs;
.source "PostSubscribeOnBoardPublisherRequest.java"


# instance fields
.field private a:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lgcs;-><init>()V

    .line 21
    iput-object p1, p0, Lgcq;->a:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    .line 22
    iput-object p2, p0, Lgcq;->b:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {p0, v0}, Lgcq;->setMethod(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 24
    invoke-virtual {p0}, Lgcq;->enableParamsInUrl()Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 25
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "http://subscribe.wandoujia.com/api/v2/guide/subscribe"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lgcq;->a:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "type"

    iget-object v1, p0, Lgcq;->a:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lgcq;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const-string v0, "ids"

    iget-object v1, p0, Lgcq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_1
    invoke-super {p0, p1}, Lgcs;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 37
    return-void
.end method
