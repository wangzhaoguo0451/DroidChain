.class final Ldpx;
.super Lhhl;
.source "SearchExpandPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Ldpw;


# direct methods
.method constructor <init>(Ldpw;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Ldpx;->b:Ldpw;

    iput-object p3, p0, Ldpx;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 25
    iget-object v2, p0, Ldpx;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, p0, Ldpx;->b:Ldpw;

    invoke-virtual {v0}, Lhic;->g()Lhas;

    move-result-object v0

    iget-object v0, v0, Lhas;->a:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_1

    .line 26
    :goto_1
    if-gez v0, :cond_3

    .line 34
    :cond_0
    :goto_2
    return v1

    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 29
    :cond_3
    iget-object v2, p0, Ldpx;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    iget-object v2, p0, Ldpx;->b:Ldpw;

    invoke-virtual {v2}, Lhic;->g()Lhas;

    move-result-object v2

    iget-object v2, v2, Lhas;->a:Leqw;

    invoke-virtual {v2, v0}, Leqw;->b(I)V

    .line 33
    iget-object v2, p0, Ldpx;->b:Ldpw;

    invoke-virtual {v2}, Lhic;->g()Lhas;

    move-result-object v2

    iget-object v2, v2, Lhas;->a:Leqw;

    iget-object v3, p0, Ldpx;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, v3, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Leqw;->a(ILjava/util/List;)V

    goto :goto_2
.end method
