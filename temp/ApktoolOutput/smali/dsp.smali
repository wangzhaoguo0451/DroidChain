.class final Ldsp;
.super Ljava/lang/Object;
.source "SearchSuggestionTextView.java"

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
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ldso;


# direct methods
.method constructor <init>(Ldso;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Ldsp;->b:Ldso;

    iput-object p2, p0, Ldsp;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 105
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    iget-object v0, p0, Ldsp;->a:Ljava/lang/String;

    iget-object v1, p0, Ldsp;->b:Ldso;

    iget-object v1, v1, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldsp;->b:Ldso;

    iget-object v0, v0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    iget-object v2, p0, Ldsp;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->a(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
