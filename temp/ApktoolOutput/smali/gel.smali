.class public final Lgel;
.super Ljava/lang/Object;
.source "VideoProviderManager.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/callback/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video/model/ProviderInfo;",
        ">;",
        "Ljava/util/concurrent/ExecutionException;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/manager/VideoProviderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget v1, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b:I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v1, v1, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->e()Z

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 346
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v2, v2, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b:I

    iget-object v0, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->c()V

    iget-object v0, p0, Lgel;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->e()Z

    return-void
.end method
