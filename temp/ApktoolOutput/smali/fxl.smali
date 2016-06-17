.class public final Lfxl;
.super Lfxq;
.source "GetDarkKnowledgeRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lfxq;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfxl;->b:Z

    return-void
.end method


# virtual methods
.method protected final a()Lcom/wandoujia/p4/http/request/OptionFields;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->DARK_KNOWLEDGE:Lcom/wandoujia/p4/http/request/OptionFields;

    return-object v0
.end method

.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "http://apps.wandoujia.com/api/v3/knowledges"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lfxq;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 41
    iget-object v0, p0, Lfxl;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "packageNames"

    iget-object v1, p0, Lfxl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    const-string v0, "onlyInstalled"

    iget-boolean v1, p0, Lfxl;->b:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
