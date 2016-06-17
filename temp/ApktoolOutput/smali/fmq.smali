.class public final Lfmq;
.super Lfxx;
.source "SearchCommunityGroupBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lfxx;-><init>()V

    .line 26
    iput-object p1, p0, Lfmq;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lfmq;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lfmq;->c:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->GET:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {p0, v0}, Lfmq;->setMethod(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfmq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 31
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "http://group.wandoujia.com/api/v1/groups/search"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    const-string v0, "subject_type"

    iget-object v1, p0, Lfmq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "subject_id"

    iget-object v1, p0, Lfmq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "q"

    iget-object v1, p0, Lfmq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1}, Lfxx;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 39
    return-void
.end method
