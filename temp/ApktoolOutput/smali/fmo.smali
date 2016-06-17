.class public final Lfmo;
.super Lflr;
.source "PostCommunityReplyRequestBuilder.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lflr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "http://group.wandoujia.com/api/v1/replies/add"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lflr;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 48
    iget-object v0, p0, Lfmo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set topic id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lfmo;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set reply message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    const-string v0, "topic_id"

    iget-object v1, p0, Lfmo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "message"

    iget-object v1, p0, Lfmo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lfmo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    const-string v0, "parent_reply_id"

    iget-object v1, p0, Lfmo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    iget-object v0, p0, Lfmo;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "picture"

    iget-object v1, p0, Lfmo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    return-void
.end method
