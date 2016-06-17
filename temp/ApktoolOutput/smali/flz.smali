.class public final Lflz;
.super Lfiq;
.source "GetCommunityGroupListRequestBuilder.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lfiq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "http://group.wandoujia.com/api/v1/groups/list"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lfiq;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 38
    iget-object v0, p0, Lflz;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "subject_type"

    iget-object v1, p0, Lflz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lflz;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "item_status"

    iget-object v1, p0, Lflz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    return-void
.end method
