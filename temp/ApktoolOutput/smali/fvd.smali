.class public final Lfvd;
.super Lfsv;
.source "GiftListFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsv",
        "<",
        "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/app/button/model/AppModelWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/IAppLiteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/IAppLiteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lfsv;-><init>()V

    .line 26
    iput-object p1, p0, Lfvd;->f:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lfuz;

    invoke-direct {v1}, Lfuz;-><init>()V

    .line 42
    iget-object v0, p0, Lfvd;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfvd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    iget-object v3, p0, Lfvd;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lfvd;->a:Ljava/util/Map;

    iget-object v0, p0, Lfvd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/IAppLiteInfo;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLitePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lfvd;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppLitePackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    invoke-static {v0}, Ld;->a(Lcom/wandoujia/entities/app/IAppLiteInfo;)Leiu;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;-><init>(Leiu;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfvd;->b:Ljava/lang/String;

    .line 47
    :goto_1
    invoke-virtual {v1}, Lfuz;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfvf;

    iget-object v2, p0, Lfvd;->b:Ljava/lang/String;

    iput-object v2, v0, Lfvf;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lfvf;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 48
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 49
    if-eqz v0, :cond_2

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    .line 51
    iget-object v1, p0, Lfvd;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setAppModelWrapper(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)V

    goto :goto_2

    .line 45
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfvd;->a:Ljava/util/Map;

    goto :goto_1

    .line 54
    :cond_2
    return-object v0
.end method
