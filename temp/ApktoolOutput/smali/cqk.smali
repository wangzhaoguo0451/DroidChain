.class public abstract Lcqk;
.super Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
.source "AbstractAuthorizedRequestBuilder.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;-><init>(Lcom/wandoujia/rpc/http/provider/CookieProvider;)V

    .line 18
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->POST:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {p0, v0}, Lcqk;->setMethod(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 19
    invoke-virtual {p0}, Lcqk;->enableCompressRequestContent()Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 20
    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 40
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    sget-object v1, Ld;->g:Lcqj;

    iget-object v1, v1, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CipherUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    sget-object v1, Ld;->g:Lcqj;

    iget-object v1, v1, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CipherUtil;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/MD5Utils;->md5Digest(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 30
    const-string v0, "id"

    sget-object v1, Ld;->g:Lcqj;

    iget-object v1, v1, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CipherUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "entry"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "udid"

    sget-object v1, Ld;->g:Lcqj;

    iget-object v1, v1, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    invoke-static {v1}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "version"

    sget-object v1, Ld;->g:Lcqj;

    iget-object v1, v1, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "channel"

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
