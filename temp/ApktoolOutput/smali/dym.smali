.class public final Ldym;
.super Ldyi;
.source "GiftListFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldyi",
        "<",
        "Lcom/wandoujia/launcher/gift/http/model/GiftModel;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ldyi;-><init>()V

    .line 24
    iput-object p1, p0, Ldym;->e:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/gift/http/model/GiftModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ldyk;

    invoke-direct {v1}, Ldyk;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldym;->d:Ljava/util/Map;

    .line 37
    invoke-virtual {v1}, Ldyk;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Ldyn;

    iget-object v2, p0, Ldym;->e:Ljava/lang/String;

    iput-object v2, v0, Ldyn;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ldyn;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 38
    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/wandoujia/rpc/http/client/DataApi;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    .line 41
    iget-object v1, p0, Ldym;->d:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    invoke-virtual {v2, v1}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->setAppModelWrapper(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)V

    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method
