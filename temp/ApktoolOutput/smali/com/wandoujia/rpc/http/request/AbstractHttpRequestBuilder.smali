.class public abstract Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
.super Ljava/lang/Object;
.source "AbstractHttpRequestBuilder.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;


# static fields
.field private static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final GZIP_ENCODING:Ljava/lang/String; = "gzip, deflate"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private additionalParams:Ljava/lang/String;

.field private attachDefaultCookie:Z

.field private compress:Z

.field private context:Landroid/content/Context;

.field private final cookieProvider:Lcom/wandoujia/rpc/http/provider/CookieProvider;

.field private encrypt:Z

.field private isCallingHeaders:Z

.field private isCallingParams:Z

.field private method:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

.field private paramsInUrl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->GET:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    iput-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->method:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    .line 59
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->isCallingParams:Z

    .line 60
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->isCallingHeaders:Z

    .line 61
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->compress:Z

    .line 62
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->encrypt:Z

    .line 63
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->paramsInUrl:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->cookieProvider:Lcom/wandoujia/rpc/http/provider/CookieProvider;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/rpc/http/provider/CookieProvider;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->GET:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    iput-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->method:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    .line 59
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->isCallingParams:Z

    .line 60
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->isCallingHeaders:Z

    .line 61
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->compress:Z

    .line 62
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->encrypt:Z

    .line 63
    iput-boolean v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->paramsInUrl:Z

    .line 71
    iput-object p1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->cookieProvider:Lcom/wandoujia/rpc/http/provider/CookieProvider;

    .line 72
    return-void
.end method

.method private static createNamePairs(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    #getter for: Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;
    invoke-static {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->access$000(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-object v0, v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_1
    return-object v2
.end method

.method private static createUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-object p0

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 295
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 299
    :cond_2
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static generateCacheKey(Ljava/lang/StringBuilder;Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 214
    #getter for: Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;
    invoke-static {p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->access$000(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-boolean v1, v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->isCacheableParam:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-object v0, v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method


# virtual methods
.method public final build()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 122
    if-nez v0, :cond_0

    move-object v0, v1

    .line 191
    :goto_0
    return-object v0

    .line 125
    :cond_0
    new-instance v3, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    invoke-direct {v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;-><init>()V

    .line 126
    invoke-virtual {p0, v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 128
    sget-object v2, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$1;->$SwitchMap$com$wandoujia$rpc$http$request$AbstractHttpRequestBuilder$Method:[I

    iget-object v4, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->method:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {v4}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    move-object v2, v1

    .line 179
    :cond_1
    :goto_1
    if-eqz v2, :cond_7

    .line 184
    new-instance v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    invoke-direct {v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;-><init>()V

    .line 185
    invoke-virtual {p0, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->setHeaders(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 186
    #getter for: Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;
    invoke-static {v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->access$000(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-object v0, v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :pswitch_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 131
    #getter for: Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;
    invoke-static {v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->access$000(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has null value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 135
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-object v0, v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 138
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->additionalParams:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->createUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->getTimeout()I

    move-result v0

    if-lez v0, :cond_1

    .line 141
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-virtual {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->getTimeout()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 142
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-virtual {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->getTimeout()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto/16 :goto_1

    .line 148
    :pswitch_1
    iget-object v2, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->additionalParams:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->createUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-boolean v2, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->paramsInUrl:Z

    if-eqz v2, :cond_4

    .line 150
    invoke-virtual {v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->createUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->clear()V

    .line 154
    :cond_4
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 156
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->genEntity(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 157
    iget-boolean v3, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->compress:Z

    if-eqz v3, :cond_5

    .line 158
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/IOUtils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/wandoujia/base/utils/GZipUtil;->zipBytes([B)[B

    move-result-object v3

    .line 160
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 162
    :cond_5
    iget-boolean v3, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->encrypt:Z

    if-eqz v3, :cond_6

    .line 163
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/IOUtils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 164
    iget-object v3, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/wandoujia/base/utils/CipherUtil;->getAESKey(Landroid/content/Context;)[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/wandoujia/base/utils/CipherUtil;->encrypt([B[B)[B

    move-result-object v3

    .line 165
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 167
    :cond_6
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 169
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    .line 191
    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 174
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 172
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableCompressRequestContent()Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->compress:Z

    .line 91
    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->encrypt:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->compress:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already encrypt, could not compress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-object p0
.end method

.method public enableEncryptRequestContent(Landroid/content/Context;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
    .locals 2
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->encrypt:Z

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->context:Landroid/content/Context;

    .line 113
    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->encrypt:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->compress:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already compress, could not encrypt"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    return-object p0
.end method

.method public enableParamsInUrl()Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->paramsInUrl:Z

    .line 103
    return-object p0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 251
    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->isCallingParams:Z

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setParams() must call super.setParams()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->isCallingHeaders:Z

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setHeaders() must call super.setHeaders()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    return-void
.end method

.method public genEntity(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Lorg/apache/http/HttpEntity;
    .locals 3
    .parameter

    .prologue
    .line 196
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-static {p1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->createNamePairs(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Ljava/util/List;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 197
    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->method:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    invoke-virtual {v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    invoke-direct {v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;-><init>()V

    .line 205
    invoke-virtual {p0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 206
    invoke-static {v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->generateCacheKey(Ljava/lang/StringBuilder;Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 207
    new-instance v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;

    invoke-direct {v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;-><init>()V

    .line 208
    invoke-virtual {p0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->setHeaders(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 209
    invoke-static {v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->generateCacheKey(Ljava/lang/StringBuilder;Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public setAdditionalParams(Ljava/lang/String;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->additionalParams:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->attachDefaultCookie:Z

    .line 76
    return-object p0
.end method

.method public setCompress(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->compress:Z

    .line 99
    return-void
.end method

.method public setHeaders(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 269
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, deflate"

    invoke-virtual {p1, v0, v1, v2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->attachDefaultCookie:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->cookieProvider:Lcom/wandoujia/rpc/http/provider/CookieProvider;

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "Cookie"

    iget-object v1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->cookieProvider:Lcom/wandoujia/rpc/http/provider/CookieProvider;

    invoke-interface {v1}, Lcom/wandoujia/rpc/http/provider/CookieProvider;->getDefaultCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->compress:Z

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1, v2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->isCallingHeaders:Z

    .line 277
    return-void
.end method

.method public setMethod(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->method:Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Method;

    .line 81
    return-object p0
.end method

.method public setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->isCallingParams:Z

    .line 237
    return-void
.end method

.method protected setParamsInUrl(Z)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;->paramsInUrl:Z

    .line 108
    return-void
.end method
