.class final Ldvl;
.super Ljava/lang/Object;
.source "TopicInfoFetcherImpl.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lcom/wandoujia/api/proto/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ldvk;


# direct methods
.method constructor <init>(Ldvk;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Ldvl;->a:Ldvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    invoke-direct {v1, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    iget-object v0, p0, Ldvl;->a:Ldvk;

    invoke-interface {v0, v1}, Ldvk;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    :cond_0
    return-void
.end method
