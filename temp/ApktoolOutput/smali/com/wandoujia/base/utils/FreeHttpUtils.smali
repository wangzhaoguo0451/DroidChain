.class public Lcom/wandoujia/base/utils/FreeHttpUtils;
.super Ljava/lang/Object;
.source "FreeHttpUtils.java"


# static fields
.field public static final FREE_HOST_NAME:Ljava/lang/String; = "vip.wandoujia.com"

.field public static final FREE_HTTP_HOST:Lorg/apache/http/HttpHost; = null

.field private static final FREE_URL:Ljava/lang/String; = "http://vip.wandoujia.com/proxy"

.field private static final FREE_URL_EXPRESSION:Ljava/lang/String; = "http://vip.wandoujia.com/proxy\\?url=[^\\s]*"

.field private static final PARAM_URL:Ljava/lang/String; = "url"

.field private static freeParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private static inFreeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "vip.wandoujia.com"

    const/4 v2, -0x1

    const-string v3, "http"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/base/utils/FreeHttpUtils;->FREE_HTTP_HOST:Lorg/apache/http/HttpHost;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/base/utils/FreeHttpUtils;->inFreeMode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFreeRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;
    .locals 2
    .parameter

    .prologue
    .line 45
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 46
    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    .line 47
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/FreeHttpUtils;->generateFreeURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 49
    :cond_0
    return-object p0
.end method

.method public static buildFreeURIIfNeed(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-static {}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isInFreeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/wandoujia/base/utils/FreeHttpUtils;->generateFreeURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    .line 85
    :cond_0
    return-object p0
.end method

.method public static buildFreeURLIfNeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-static {}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isInFreeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/FreeHttpUtils;->generateFreeURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    :cond_0
    return-object p0
.end method

.method public static buildFreeURLIfNeed(Ljava/net/URL;)Ljava/net/URL;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isInFreeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/FreeHttpUtils;->generateFreeURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 77
    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static generateFreeURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 4
    .parameter

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/FreeHttpUtils;->isProxyUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object p0

    .line 60
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "url"

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v1, Lcom/wandoujia/base/utils/FreeHttpUtils;->freeParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://vip.wandoujia.com/proxy?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-static {p0}, Lcom/wandoujia/base/utils/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/wandoujia/base/utils/MimeTypeMap;->getSingleton()Lcom/wandoujia/base/utils/MimeTypeMap;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method

.method public static isInFreeMode()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/wandoujia/base/utils/FreeHttpUtils;->inFreeMode:Z

    return v0
.end method

.method public static isProxyUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    const-string v0, "http://vip.wandoujia.com/proxy\\?url=[^\\s]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setFreeHttpParams(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    sput-object p0, Lcom/wandoujia/base/utils/FreeHttpUtils;->freeParams:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static setInFreeMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-boolean p0, Lcom/wandoujia/base/utils/FreeHttpUtils;->inFreeMode:Z

    .line 38
    return-void
.end method
