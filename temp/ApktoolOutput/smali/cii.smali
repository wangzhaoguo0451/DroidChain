.class public final Lcii;
.super Ljava/lang/Object;
.source "AccountCore.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lbuu;

.field public f:Lcmh;

.field g:Lcvo;

.field h:Landroid/os/Handler;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/account/listener/IAccountListener;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcja;

.field public k:Lcml;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x5

    iput v0, p0, Lcii;->l:I

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcii;->h:Landroid/os/Handler;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcii;->i:Ljava/util/List;

    .line 104
    new-instance v0, Lcja;

    invoke-direct {v0, p0}, Lcja;-><init>(Lcii;)V

    iput-object v0, p0, Lcii;->j:Lcja;

    .line 106
    new-instance v0, Lcml;

    invoke-direct {v0}, Lcml;-><init>()V

    iput-object v0, p0, Lcii;->k:Lcml;

    .line 112
    new-instance v0, Lcvv;

    invoke-direct {v0}, Lcvv;-><init>()V

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcij;

    invoke-direct {v2}, Lcij;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcvv;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcvv;

    move-result-object v0

    invoke-virtual {v0}, Lcvv;->a()Lcvo;

    move-result-object v0

    iput-object v0, p0, Lcii;->g:Lcvo;

    .line 122
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 279
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://account.wandoujia.com/avatar.php?uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcii;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 283
    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 285
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    .line 287
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 288
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 290
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 293
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 304
    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 307
    :goto_0
    return-object v0

    .line 304
    :cond_0
    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 307
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 300
    :catch_1
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 302
    :catch_2
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0
.end method

.method public static a(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/account/dto/DeviceBean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    if-eqz p0, :cond_0

    .line 403
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "st_model"

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "st_brand"

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "st_sdk_int"

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "st_dev_id"

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getUdid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "st_ver_code"

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "st_ver_name"

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "from"

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_0
    return-object v0
.end method

.method static a(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .parameter

    .prologue
    .line 1143
    if-eqz p0, :cond_0

    .line 1144
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 1146
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1149
    :cond_0
    return-void
.end method

.method public static b(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 759
    if-nez p0, :cond_0

    .line 760
    const-string v0, ""

    .line 768
    :goto_0
    return-object v0

    .line 762
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    :try_start_0
    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&versionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&udid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getUdid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static b()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 155
    invoke-static {v0, v0}, Ld;->c(II)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 417
    if-eqz p0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    :try_start_0
    const-string v1, "st_model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&st_brand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getBrand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&st_dev_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getUdid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&st_sdk_int="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getSdk()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&st_ver_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&st_ver_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/DeviceBean;->getVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    .line 433
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    .line 436
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 354
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://account.wandoujia.com/v4/api/register/sms/progress?key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcii;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 358
    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 360
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 370
    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 373
    :goto_0
    return-object v0

    .line 370
    :cond_0
    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 373
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 368
    :catch_2
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 370
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0
.end method

.method private d(Ljava/lang/String;)Lcom/wandoujia/account/dto/AccountResponse;
    .locals 2
    .parameter

    .prologue
    .line 1429
    if-eqz p1, :cond_0

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcii;->g:Lcvo;

    const-class v1, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v0, p1, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 317
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "https://account.wandoujia.com/v4/api/seccode"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcii;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 321
    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 323
    invoke-static {v0}, Ld;->c(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lchv;->c(Ljava/lang/String;)V

    .line 324
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 327
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 328
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 330
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 341
    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 344
    :goto_0
    return-object v0

    .line 341
    :cond_0
    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 344
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 337
    :catch_1
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 339
    :catch_2
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 341
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0
.end method

.method private static h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 378
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "https://account.wandoujia.com/v4/api/register/sms/key"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcii;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 382
    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 383
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 384
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 394
    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 397
    :goto_0
    return-object v0

    .line 394
    :cond_0
    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 397
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 390
    :catch_1
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 392
    :catch_2
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 394
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;[Lcom/wandoujia/account/dto/FIELDS;)Lcom/wandoujia/account/dto/AccountResponse;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    new-instance v1, Lcom/wandoujia/account/dto/AccountResponse;

    sget-object v0, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-direct {v1, v0}, Lcom/wandoujia/account/dto/AccountResponse;-><init>(Lcom/wandoujia/account/dto/AccountError;)V

    .line 621
    const-string v3, "https://account.wandoujia.com/v4/api/profile"

    .line 623
    if-eqz p3, :cond_4

    .line 624
    const-string v2, ""

    .line 625
    array-length v4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p3, v0

    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/wandoujia/account/dto/FIELDS;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?fields="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcii;->c(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 637
    const-string v0, "Cookie"

    invoke-virtual {p0}, Lcii;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {}, Lcii;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 641
    :try_start_0
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 642
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 643
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_5

    .line 644
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-static {v0}, Ld;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 648
    iput-object v0, p0, Lcii;->a:Ljava/lang/String;

    .line 650
    :cond_2
    iget-object v0, p0, Lcii;->g:Lcvo;

    const-class v4, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v0, v2, v4}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 651
    :try_start_1
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v1

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 652
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 653
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    invoke-virtual {p0}, Lcii;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld;->a(Lcom/wandoujia/account/dto/AccountBean;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    sget-object v1, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->AUTO_LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-virtual {p0, v1}, Lcii;->a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 665
    :cond_3
    :goto_2
    invoke-static {v3}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 667
    :goto_3
    return-object v0

    .line 630
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?fields="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/account/dto/FIELDS;->BASIC_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 657
    :cond_5
    const/16 v4, 0x193

    if-ne v2, v4, :cond_6

    .line 658
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcii;->a(Z)V

    move-object v0, v1

    goto :goto_2

    .line 660
    :cond_6
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_2

    .line 665
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_4
    invoke-static {v3}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_5
    invoke-static {v3}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_6
    invoke-static {v3}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/wandoujia/account/dto/AccountResponse;"
        }
    .end annotation

    .prologue
    .line 1336
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1337
    const/4 v1, 0x0

    .line 1338
    invoke-static {}, Lcii;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 1339
    const-string v3, "Cookie"

    invoke-virtual {p0}, Lcii;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Lchv;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1342
    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "seccode_key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1350
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1351
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    .line 1352
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_3

    .line 1354
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    iget-object v4, p0, Lcii;->g:Lcvo;

    const-class v5, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v4, v0, v5}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1356
    :try_start_2
    invoke-static {v3}, Ld;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 1357
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1358
    iput-object v1, p0, Lcii;->a:Ljava/lang/String;

    .line 1360
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1361
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    iget-object v3, p0, Lcii;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ld;->a(Lcom/wandoujia/account/dto/AccountBean;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1371
    :cond_2
    :goto_0
    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 1383
    :goto_1
    if-eqz v0, :cond_5

    :goto_2
    return-object v0

    .line 1366
    :cond_3
    const/16 v4, 0x193

    if-ne v0, v4, :cond_4

    .line 1368
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    invoke-direct {p0, v0}, Lcii;->d(Ljava/lang/String;)Lcom/wandoujia/account/dto/AccountResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_4
    move-object v0, v1

    goto :goto_0

    .line 1375
    :catch_2
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    .line 1382
    goto :goto_1

    .line 1377
    :catch_3
    move-exception v0

    :goto_4
    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    .line 1382
    goto :goto_1

    .line 1379
    :catch_4
    move-exception v0

    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    .line 1382
    goto :goto_1

    .line 1381
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0

    .line 1383
    :cond_5
    new-instance v0, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-direct {v0}, Lcom/wandoujia/account/dto/AccountResponse;-><init>()V

    goto :goto_2

    .line 1377
    :catch_5
    move-exception v1

    move-object v1, v0

    goto :goto_4

    .line 1375
    :catch_6
    move-exception v1

    move-object v1, v0

    goto :goto_3

    .line 1364
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_8
    move-exception v1

    goto :goto_0

    .line 1365
    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcii;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcii;->a:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Lcii;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 797
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 799
    :try_start_0
    new-instance v2, Lbut;

    iget-object v3, p0, Lcii;->k:Lcml;

    iget-object v3, v3, Lcml;->a:Ljava/lang/String;

    const-string v4, "http://account.wandoujia.com/v1/user/?do=platform_sina"

    const-string v5, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

    invoke-direct {v2, p1, v3, v4, v5}, Lbut;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v3, p1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lbut;)V

    iput-object v3, p0, Lcii;->b:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 803
    iget-object v3, p0, Lcii;->b:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v4, Lcir;

    invoke-direct {v4, p0, p2, p3}, Lcir;-><init>(Lcii;Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;)V

    sget-object v5, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->ALL:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    const v2, 0x80cd

    iput v2, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->d:I

    iput-object v4, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->SsoOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    if-ne v5, v2, :cond_5

    move v2, v1

    :goto_0
    sget-object v6, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->WebOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a:Lbux;

    invoke-virtual {v0, v4}, Lbux;->a(Lbuv;)V

    .line 806
    :cond_0
    :goto_1
    return-void

    .line 803
    :cond_1
    iget-object v4, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->e:Lbuj;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->e:Lbuj;

    invoke-virtual {v5}, Lbuj;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    if-nez v1, :cond_3

    :goto_3
    if-nez v0, :cond_0

    if-eqz v2, :cond_4

    iget-object v0, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "not install weibo client!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbuv;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_1

    .line 804
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move v1, v0

    .line 803
    goto :goto_2

    :cond_3
    iget-object v0, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->e:Lbuj;

    iget-object v0, v0, Lbuj;->a:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sina.weibo.remotessoservice"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->f:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a:Lbux;

    iget-object v1, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    invoke-virtual {v0, v1}, Lbux;->a(Lbuv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcik;

    invoke-direct {v1, p0, p1}, Lcik;-><init>(Lcii;Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 235
    invoke-static {}, Lchv;->D()V

    .line 236
    iget-object v0, p0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcin;

    invoke-direct {v1, p0, p1}, Lcin;-><init>(Lcii;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1190
    const/4 v0, 0x0

    .line 1191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1193
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "account"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://account.wandoujia.com/v4/api/activation/initialization?type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v1

    .line 1197
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 1198
    const/4 v0, 0x1

    .line 1200
    :cond_1
    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/wandoujia/account/dto/AccountResponse;
    .locals 6
    .parameter

    .prologue
    .line 553
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcii;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    const-string v1, "Cookie"

    invoke-virtual {p0}, Lcii;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    new-instance v1, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-direct {v1}, Lcom/wandoujia/account/dto/AccountResponse;-><init>()V

    .line 559
    invoke-static {}, Lcii;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 561
    :try_start_0
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 562
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    iget-object v4, p0, Lcii;->g:Lcvo;

    const-class v5, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v4, v0, v5}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 564
    :try_start_1
    invoke-static {v3}, Ld;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 566
    iput-object v1, p0, Lcii;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 575
    :cond_1
    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 578
    :goto_0
    return-object v0

    .line 569
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_0

    .line 571
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_0

    .line 573
    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0

    .line 573
    :catch_3
    move-exception v1

    goto :goto_3

    .line 571
    :catch_4
    move-exception v1

    goto :goto_2

    .line 569
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/account/dto/AccountResponse;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1388
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "account"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    :try_start_0
    const-string v1, "https://account.wandoujia.com/v4/api/profile/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-virtual {p0, v1, v0}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1394
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcil;

    invoke-direct {v1, p0}, Lcil;-><init>(Lcii;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcim;

    invoke-direct {v1, p0}, Lcim;-><init>(Lcii;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 524
    invoke-static {}, Lcii;->h()Ljava/lang/String;

    move-result-object v3

    .line 525
    const-string v0, ""

    .line 526
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "106"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 533
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    invoke-static {v3}, Lcii;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    :goto_1
    iget v1, p0, Lcii;->l:I

    if-lez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iget v0, p0, Lcii;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcii;->l:I

    .line 541
    :try_start_1
    iget v0, p0, Lcii;->l:I

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    :goto_2
    invoke-static {v3}, Lcii;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 547
    :cond_0
    const/4 v1, 0x5

    iput v1, p0, Lcii;->l:I

    .line 549
    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wdj_auth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcii;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
