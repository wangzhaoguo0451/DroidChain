.class public final Lfxi;
.super Lfxj;
.source "GetAppLiteInfoListRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lfxj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/wandoujia/p4/http/request/OptionFields;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lfxi;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfxi;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfxi;->b:Ljava/lang/String;

    const-string v1, "phoenix_app_sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->LITE_BACKUP:Lcom/wandoujia/p4/http/request/OptionFields;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->LITE:Lcom/wandoujia/p4/http/request/OptionFields;

    goto :goto_0
.end method

.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "http://api.wandoujia.com/v1/apps"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1}, Lfxj;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 42
    iget-object v0, p0, Lfxi;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "pns"

    iget-object v1, p0, Lfxi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lfxi;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    const-string v0, "from"

    iget-object v1, p0, Lfxi;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    const-string v0, "superior"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    const-string v0, "type"

    invoke-virtual {p1, v0, v2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    return-void
.end method
