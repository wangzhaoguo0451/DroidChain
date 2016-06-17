.class public abstract Lfxg;
.super Lfxq;
.source "AbstractGetAppDetailInfoRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lfxq;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/wandoujia/p4/http/request/OptionFields;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lfxg;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    :try_start_0
    iget-object v1, p0, Lfxg;->a:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://api.wandoujia.com/v1/apps/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lfxq;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 50
    invoke-virtual {p0}, Lfxg;->a()Lcom/wandoujia/p4/http/request/OptionFields;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "opt_fields"

    invoke-virtual {v0}, Lcom/wandoujia/p4/http/request/OptionFields;->getOptionFields()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
