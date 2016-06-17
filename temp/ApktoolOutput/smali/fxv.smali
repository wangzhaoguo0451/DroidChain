.class public Lfxv;
.super Lfxm;
.source "GetZendeskTicketCategoriesRequestBuilder.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lfxm;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "http://android.help.wandoujia.com/zendesk/api/v2/ticket_fields/0.json"

    return-object v0
.end method

.method protected setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lfxm;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 36
    iget-object v0, p0, Lfxv;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set signiture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lfxv;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set timestamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    const-string v0, "timestamp"

    iget-object v1, p0, Lfxv;->c:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "signiture"

    iget-object v1, p0, Lfxv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
