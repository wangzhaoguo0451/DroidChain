.class public final Lfxk;
.super Lfxq;
.source "GetCommentRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lfxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "http://api.wandoujia.com/v1/comments"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lfxq;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 47
    iget-object v0, p0, Lfxk;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const-string v0, "packageName"

    iget-object v1, p0, Lfxk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lfxk;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "uid"

    iget-object v1, p0, Lfxk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lfxk;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    const-string v0, "source"

    iget-object v1, p0, Lfxk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    iget-object v0, p0, Lfxk;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    const-string v0, "wdj_auth"

    iget-object v1, p0, Lfxk;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_3
    return-void
.end method
