.class public Lcom/wandoujia/p4/pay/httpapi/PayHttp;
.super Ljava/lang/Object;
.source "PayHttp.java"


# static fields
.field public static final PUBLICKEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCd95FnJFhPinpNiE/h4VA6bU1rzRa5+a25BxsnFX8TzquWxqDCoe4xG6QKXMXuKvV57tTRpzRo2jeto40eHKClzEgjx9lTYVb2RFHHFWio/YGTfnqIPTVpi7d7uHY+0FZ0lYL5LlW4E2+CQMxFOPRwfqGzMjs1SDlH7lVrLEVy6QIDAQAB"

.field private static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private queue:Lagr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 44
    new-instance v0, Lahg;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lahg;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 45
    invoke-static {p1, v0}, Ld;->a(Landroid/content/Context;Lahh;)Lagr;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->queue:Lagr;

    .line 46
    return-void
.end method

.method public static getTicketFieldResponse(Landroid/content/Context;)Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketFieldResponse;
    .locals 1
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method private shortUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 147
    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private urlJoinParams(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    if-nez v1, :cond_2

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_2
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    .line 73
    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 75
    :cond_1
    const-string v0, "URL"

    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 51
    const-string v1, "/"

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->addCookie(Lorg/apache/http/impl/cookie/BasicClientCookie;)V

    .line 53
    return-void
.end method

.method public addCookie(Lorg/apache/http/impl/cookie/BasicClientCookie;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 57
    return-void
.end method

.method public getJSON(Ljava/lang/String;Ljava/util/HashMap;Lagu;Lagt;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->urlJoinParams(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Laht;

    new-instance v2, Lcom/wandoujia/p4/pay/httpapi/PayHttp$1;

    invoke-direct {v2, p0, p3}, Lcom/wandoujia/p4/pay/httpapi/PayHttp$1;-><init>(Lcom/wandoujia/p4/pay/httpapi/PayHttp;Lagu;)V

    new-instance v3, Lcom/wandoujia/p4/pay/httpapi/PayHttp$2;

    invoke-direct {v3, p0, p4}, Lcom/wandoujia/p4/pay/httpapi/PayHttp$2;-><init>(Lcom/wandoujia/p4/pay/httpapi/PayHttp;Lagt;)V

    invoke-direct {v1, v0, v2, v3}, Laht;-><init>(Ljava/lang/String;Lagu;Lagt;)V

    .line 116
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getRetryPolicy()Lagw;

    move-result-object v0

    iput-object v0, v1, Lcom/android/volley/Request;->j:Lagw;

    .line 117
    iget-object v0, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->queue:Lagr;

    invoke-virtual {v0, v1}, Lagr;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 118
    return-void
.end method

.method public getRetryPolicy()Lagw;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lagw;

    const/16 v1, 0xbb8

    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Lagw;-><init>(IIF)V

    .line 93
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/util/HashMap;Lagu;Lagt;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lagu",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->urlJoinParams(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Lahy;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, p4, v2}, Lahy;-><init>(Ljava/lang/String;Lagu;Lagt;B)V

    .line 83
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getRetryPolicy()Lagw;

    move-result-object v0

    iput-object v0, v1, Lcom/android/volley/Request;->j:Lagw;

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->queue:Lagr;

    invoke-virtual {v0, v1}, Lagr;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 85
    return-void
.end method

.method public getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    const-string v0, "MD5"

    .line 124
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/MD5;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 127
    const-string v4, "content"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v4, "signType"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "sign"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "version"

    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "get"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$3;

    invoke-direct {v0, p0, p3}, Lcom/wandoujia/p4/pay/httpapi/PayHttp$3;-><init>(Lcom/wandoujia/p4/pay/httpapi/PayHttp;Lagu;)V

    invoke-virtual {p0, p1, v3, v0, p4}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getJSON(Ljava/lang/String;Ljava/util/HashMap;Lagu;Lagt;)V

    .line 144
    return-void
.end method
