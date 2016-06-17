.class public final Lfxt;
.super Lfxq;
.source "GetTagAppsRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lfxq;-><init>()V

    .line 18
    const-string v0, "total"

    iput-object v0, p0, Lfxt;->a:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lfxt;->c:I

    return-void
.end method


# virtual methods
.method protected final a()Lcom/wandoujia/p4/http/request/OptionFields;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/wandoujia/p4/http/request/OptionFields;->TAG_WITH_CATEGORY:Lcom/wandoujia/p4/http/request/OptionFields;

    return-object v0
.end method

.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "http://apps.wandoujia.com/api/v1/apps"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Lfxq;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 52
    iget-object v0, p0, Lfxt;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "type"

    iget-object v1, p0, Lfxt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lfxt;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "tag"

    iget-object v1, p0, Lfxt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    iget v0, p0, Lfxt;->c:I

    if-ltz v0, :cond_2

    .line 59
    const-string v0, "ads_count"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lfxt;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    iget-object v0, p0, Lfxt;->d:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    if-eqz v0, :cond_3

    .line 63
    const-string v0, "appType"

    iget-object v1, p0, Lfxt;->d:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    const-string v0, "sortType"

    invoke-virtual {p1, v0, v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_4
    return-void
.end method
