.class public final Lacw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lacw;->b:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lacw;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private a()Ljava/net/URL;
    .locals 3

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mUrl : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lacw;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld;->c()V

    .line 73
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lacw;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private b()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 289
    :try_start_0
    iget-object v0, p0, Lacw;->b:Landroid/content/Context;

    .line 290
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 291
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lach;)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v1, p0, Lacw;->b:Landroid/content/Context;

    invoke-static {v1}, Ladd;->b(Landroid/content/Context;)Lcom/alipay/wandoujia/id;

    move-result-object v1

    .line 129
    sget-object v2, Lcom/alipay/wandoujia/id;->o:Lcom/alipay/wandoujia/id;

    if-ne v1, v2, :cond_0

    .line 130
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    .line 133
    :cond_0
    invoke-static {}, Lacx;->a()Lacx;

    move-result-object v5

    .line 142
    :try_start_0
    iget-object v1, v5, Lacx;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_7

    invoke-direct {p0}, Lacw;->a()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "https.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 144
    :goto_1
    if-eqz v1, :cond_1

    .line 145
    const-string v2, "http.route.default-proxy"

    invoke-interface {v6, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestUrl : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lacw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld;->g()V

    .line 148
    invoke-static {}, Ld;->e()V

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 150
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lacw;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 164
    :goto_2
    if-eqz p2, :cond_2

    .line 165
    invoke-virtual {p2}, Lach;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 171
    :cond_2
    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    invoke-virtual {v1}, Lade;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    const-string v1, "OS"

    const-string v4, "Android"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_3
    invoke-static {}, Ld;->c()V

    .line 176
    invoke-virtual {v5, v2}, Lacx;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 178
    invoke-static {}, Ld;->c()V

    .line 180
    const-string v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    .line 182
    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_4

    .line 183
    const-string v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Ld;->c()V

    .line 187
    :cond_4
    const-string v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_5

    array-length v4, v2

    if-lez v4, :cond_5

    .line 189
    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_5

    .line 190
    const-string v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    invoke-static {}, Ld;->c()V

    .line 215
    :cond_5
    return-object v1

    .line 143
    :cond_6
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lacw;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    if-eqz v2, :cond_e

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_1

    .line 194
    :catch_0
    move-exception v1

    throw v1

    .line 152
    :cond_8
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lacw;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 154
    if-eqz p2, :cond_d

    iget-object v1, p2, Lach;->b:Ljava/lang/String;

    iget-object v4, p2, Lach;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p2, Lach;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v1, "application/octet-stream;binary/octet-stream"

    :cond_a
    const-string v4, "utf-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 156
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 157
    const-string v1, "Accept-Charset"

    const-string v4, "UTF-8"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_2

    .line 195
    :catch_1
    move-exception v1

    .line 196
    if-eqz v5, :cond_b

    .line 197
    iget-object v2, v5, Lacx;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    sput-object v3, Lacx;->a:Lacx;

    .line 198
    :cond_b
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v2

    const-string v3, "connction time out"

    invoke-virtual {v2, v1, v3}, Lacm;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 199
    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    .line 200
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    .line 167
    :cond_c
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 168
    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_3

    .line 201
    :catch_2
    move-exception v1

    .line 202
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v2

    const-string v3, "connect reset"

    invoke-virtual {v2, v1, v3}, Lacm;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 203
    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    .line 204
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    .line 205
    :catch_3
    move-exception v1

    .line 206
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v2

    const-string v3, "socket time out"

    invoke-virtual {v2, v1, v3}, Lacm;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 207
    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    .line 208
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    .line 209
    :catch_4
    move-exception v1

    .line 210
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v2

    const-string v3, "connction net error"

    invoke-virtual {v2, v1, v3}, Lacm;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 211
    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    .line 212
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    :cond_d
    move-object v1, v3

    goto/16 :goto_4

    :cond_e
    move-object v1, v3

    goto/16 :goto_1

    :cond_f
    move-object v1, v3

    goto/16 :goto_1
.end method
