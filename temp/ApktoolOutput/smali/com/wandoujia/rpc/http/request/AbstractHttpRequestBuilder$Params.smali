.class public final Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;
.super Ljava/lang/Object;
.source "AbstractHttpRequestBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x337da80ea8dd4cd4L


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 351
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    return-object v0
.end method

.method public final getParamMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 343
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-object v0, v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 346
    :cond_0
    return-object v1
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    new-instance v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    new-instance v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    invoke-direct {v1, p3, p2}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void
.end method

.method public final putAll(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    iget-object v1, p1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 335
    return-void
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    iget-object v2, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;-><init>(ZLjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-object v0, p0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->params:Ljava/util/Map;

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

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-object v1, v1, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;

    iget-object v0, v0, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Value;->value:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string v4, "%s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 371
    :cond_1
    const-string v0, "&"

    invoke-static {v2, v0}, Lcom/wandoujia/base/utils/StringUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
