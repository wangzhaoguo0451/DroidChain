.class final Ldsl;
.super Ljava/lang/Object;
.source "SearchHintHelper.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

.field private synthetic b:Ldsk;


# direct methods
.method constructor <init>(Ldsk;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Ldsl;->b:Ldsk;

    iput-object p2, p0, Ldsl;->a:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Leqz",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p2, Leqz;->e:Ljava/util/List;

    .line 72
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 75
    iget-object v3, p0, Ldsl;->b:Ldsk;

    iget-boolean v3, v3, Ldsk;->c:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 77
    iget-object v2, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, p0, Ldsl;->b:Ldsk;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iput-object v0, v2, Ldsk;->d:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Ldsl;->b:Ldsk;

    invoke-virtual {v0, v1}, Ldsk;->a(Ljava/util/Collection;)V

    .line 84
    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->b:Ldrq;

    iget-object v2, p0, Ldsl;->a:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-virtual {v0, v2, v1}, Ldrq;->a(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;Ljava/util/Set;)V

    .line 87
    :cond_1
    return-void

    .line 81
    :cond_2
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    return-void
.end method
