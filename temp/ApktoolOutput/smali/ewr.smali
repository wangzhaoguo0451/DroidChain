.class public final Lewr;
.super Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
.source "AppCommentRequestBuilder.java"


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "http://comment.wandoujia.com/comment/comment!getCommentSummary.action"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 30
    const-string v0, "target"

    iget-object v1, p0, Lewr;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lewr;->a:I

    iget v1, p0, Lewr;->b:I

    div-int/2addr v0, v1

    .line 36
    const-string v1, "pageNum"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "pageSize"

    iget v1, p0, Lewr;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
