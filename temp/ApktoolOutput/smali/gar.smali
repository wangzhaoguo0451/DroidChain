.class public final Lgar;
.super Lfxm;
.source "FetchFlvResultRequestBuilder.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 17
    iput-object p1, p0, Lgar;->a:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "http://flv.wandoujia.com/hack/flv/h5"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 26
    const-string v0, "url"

    iget-object v1, p0, Lgar;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
