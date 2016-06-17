.class public final Laaq;
.super Ljava/lang/Object;
.source "DeviceIdModel.java"


# instance fields
.field a:Laar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Laar;

    invoke-direct {v0}, Laar;-><init>()V

    iput-object v0, p0, Laaq;->a:Laar;

    .line 54
    new-instance v0, Laau;

    invoke-direct {v0}, Laau;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 238
    new-instance v1, Laal;

    invoke-direct {v1}, Laal;-><init>()V

    .line 239
    const-string v1, "profiles"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "deviceid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v1}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :cond_1
    invoke-static {}, Laav;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laav;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    new-instance v0, Laau;

    invoke-direct {v0}, Laau;-><init>()V

    .line 251
    invoke-static {v1}, Laau;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-ltz v0, :cond_0

    .line 223
    const-string v0, "deviceId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const-string v0, "checkcode"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string v0, "apdtk"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "time"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "rule"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 229
    :goto_0
    return v0

    :cond_1
    const-string v0, "deviceId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 230
    const-string v0, "checkcode"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 231
    const-string v0, "apdtk"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 232
    const-string v0, "time"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "rule"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 229
    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private d()Laas;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 478
    new-instance v0, Laas;

    invoke-direct {v0}, Laas;-><init>()V

    .line 479
    iput-boolean v1, v0, Laas;->f:Z

    .line 480
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->a:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AH1"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->b:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "AH2"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->c:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "AH3"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->d:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "AH4"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->e:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "AH5"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->f:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "AH6"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->g:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "AH7"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->h:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "AH8"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->i:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "AH9"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->j:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "AH10"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->j:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->k:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "AS1"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->k:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->l:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "AS2"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->l:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->m:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "AS3"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->m:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->n:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "AS4"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->n:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->p:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "AC1"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->p:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->q:Ljava/lang/String;

    invoke-static {v3}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "AC2"

    iget-object v4, p0, Laaq;->a:Laar;

    iget-object v4, v4, Laar;->q:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string v3, "deviceInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Laaq;->a:Laar;

    iget-object v2, v2, Laar;->s:Ljava/lang/String;

    invoke-static {v2}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "deviceId"

    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->s:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v2, p0, Laaq;->a:Laar;

    iget-object v2, v2, Laar;->t:Ljava/lang/String;

    invoke-static {v2}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "priDeviceId"

    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->t:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object v2, p0, Laaq;->a:Laar;

    iget-object v2, v2, Laar;->r:Ljava/lang/String;

    invoke-static {v2}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "appId"

    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->r:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v2, p0, Laaq;->a:Laar;

    iget-object v2, v2, Laar;->o:Ljava/lang/String;

    invoke-static {v2}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "time"

    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->o:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v2, p0, Laaq;->a:Laar;

    iget-object v2, v2, Laar;->u:Ljava/lang/String;

    invoke-static {v2}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "apdtk"

    iget-object v3, p0, Laaq;->a:Laar;

    iget-object v3, v3, Laar;->u:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-static {v1}, Laau;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 481
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gez v2, :cond_16

    .line 502
    :cond_15
    :goto_0
    return-object v0

    .line 485
    :cond_16
    :try_start_0
    new-instance v2, Lacc;

    invoke-direct {v2}, Lacc;-><init>()V

    .line 486
    const-string v2, "http://seccliprod.d5198.alipay.net/api/do.htm"

    const-string v3, "deviceFingerprint"

    .line 488
    const-string v4, "1"

    const/4 v5, 0x0

    .line 486
    invoke-static {v2, v3, v1, v4, v5}, Lacc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_17

    .line 491
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_17

    .line 492
    new-instance v2, Laau;

    invoke-direct {v2}, Laau;-><init>()V

    .line 494
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 493
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laau;->a(Ljava/lang/String;)Laas;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, v0, Laas;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v1

    .line 499
    invoke-static {v1}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laaq;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 282
    const-string v0, "deviceid"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v0, "device"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 297
    :goto_0
    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-static {}, Laav;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laav;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_0
    return-object v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    invoke-static {v0}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaq;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 305
    invoke-static {p1}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {}, Laav;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laav;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 313
    const-string v2, "device"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v0, "deviceid"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WriteDataToSettings: data is"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    const-string v2, "  encrypt  data  is"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 319
    invoke-static {v0}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaq;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-static {}, Ld;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 359
    const-string v3, ".SystemConfig"

    .line 358
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 365
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    :cond_1
    :goto_0
    return-object v1

    .line 372
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    const-string v0, "device"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 380
    :goto_1
    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 381
    invoke-static {}, Laav;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laav;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-static {v0}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaq;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Laaq;->d()Laas;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v1, v0, Laas;->f:Z

    if-eqz v1, :cond_1

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Laas;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Laas;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 512
    const-string v3, "deviceId"

    iget-object v4, v0, Laas;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v3, "priDeviceId"

    iget-object v4, v0, Laas;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v3, "time"

    iget-object v4, v0, Laas;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v3, "checkcode"

    iget-object v4, v0, Laas;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v3, "rule"

    iget-object v4, v0, Laas;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v3, "apdtk"

    iget-object v4, v0, Laas;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v3, Laau;

    invoke-direct {v3}, Laau;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :try_start_1
    invoke-static {v2}, Laau;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 521
    new-instance v3, Laal;

    invoke-direct {v3}, Laal;-><init>()V

    invoke-static {}, Laav;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Laav;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "deviceid"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "profiles"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v3}, Laal;->a(Landroid/content/SharedPreferences;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 525
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Laaq;->a(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0, v1}, Laaq;->b(Ljava/lang/String;)V

    .line 527
    iget-object v0, v0, Laas;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 533
    :goto_1
    return-object v0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    invoke-static {v0}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaq;->c(Ljava/lang/String;)V

    .line 533
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 326
    invoke-static {}, Ld;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Laav;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laav;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 329
    const-string v3, ".SystemConfig"

    .line 328
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 335
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 337
    :try_start_0
    const-string v3, "device"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "WriteDataToSdCard: data is"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    const-string v3, "  encrypt  data  is"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v0, v1}, Ld;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :cond_1
    :goto_1
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-static {v0}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaq;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    .line 349
    invoke-static {v0}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaq;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->v:Ljava/lang/String;

    invoke-static {v0}, Ld;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 463
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Laaq;->a:Laar;

    iget-object v2, v2, Laar;->v:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    const-string v2, "params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 420
    if-nez v3, :cond_2

    move-object v0, v1

    .line 421
    goto :goto_0

    .line 422
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 423
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v2

    move v2, v6

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 425
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AC1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->p:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_3
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AC2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->q:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_4
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_5
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_6
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_7
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_8
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_9
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    :cond_a
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_b
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    :cond_c
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->i:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_d
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH10"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_e
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    :cond_f
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->l:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_10
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->m:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    :cond_11
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->a:Laar;

    iget-object v0, v0, Laar;->n:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 423
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    invoke-static {v0}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaq;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 463
    goto/16 :goto_0
.end method

.method final c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    iget-object v1, p0, Laaq;->a:Laar;

    iget-object v1, v1, Laar;->p:Ljava/lang/String;

    invoke-static {v1}, Ld;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Laaq;->a:Laar;

    iget-object v1, v1, Laar;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_0
    iget-object v1, p0, Laaq;->a:Laar;

    iget-object v1, v1, Laar;->q:Ljava/lang/String;

    invoke-static {v1}, Ld;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Laaq;->a:Laar;

    iget-object v1, v1, Laar;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_1
    iget-object v1, p0, Laaq;->a:Laar;

    iget-object v1, v1, Laar;->r:Ljava/lang/String;

    invoke-static {v1}, Ld;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 543
    iget-object v1, p0, Laaq;->a:Laar;

    iget-object v1, v1, Laar;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-static {v0}, Laat;->a(Ljava/util/List;)V

    .line 546
    return-void
.end method
