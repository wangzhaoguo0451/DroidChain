.class final Ldqm;
.super Ljava/lang/Object;
.source "SharePresenter.java"

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
.field private synthetic a:Ldql;


# direct methods
.method constructor <init>(Ldql;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Ldqm;->a:Ldql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Detail;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    sget-object v2, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->OTHERS:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    iget-object v3, v0, Lcom/wandoujia/api/proto/ShareDetail;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldqm;->a:Ldql;

    iget-object v2, v2, Ldql;->a:Ldqk;

    invoke-virtual {v2}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/wandoujia/api/proto/ShareDetail;->text:Ljava/lang/String;

    invoke-static {v2, v0}, Lgdo;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
