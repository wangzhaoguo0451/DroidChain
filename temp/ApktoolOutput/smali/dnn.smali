.class public final Ldnn;
.super Lhic;
.source "GrandContainerPresenter.java"


# instance fields
.field private a:Lerf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lhic;->a()V

    .line 40
    iget-object v0, p0, Ldnn;->a:Lerf;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Ldnn;->a:Lerf;

    invoke-virtual {v0}, Lerf;->a()V

    .line 43
    :cond_0
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 23
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_GRAND:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v1, :cond_1

    .line 26
    iget-object v0, p0, Ldnn;->a:Lerf;

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Ldnn;->f()Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Ldnn;->g()Lhas;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->e(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    iput-object v0, p0, Ldnn;->a:Lerf;

    .line 30
    :cond_0
    iget-object v0, p0, Ldnn;->a:Lerf;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lerf;->a(Ljava/lang/Object;)V

    .line 35
    :cond_1
    return-void
.end method
