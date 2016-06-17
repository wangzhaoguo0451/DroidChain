.class public final Ldus;
.super Ljava/lang/Object;
.source "SubscribeTimeLineFragment.java"

# interfaces
.implements Lhmw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leqw;Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;",
            "Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v3

    .line 104
    :cond_1
    invoke-virtual {p1}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Leqw;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->getAdapter()Luh;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Lern;

    iget-object v0, v0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    .line 111
    :goto_1
    invoke-virtual {p1}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p1, v3}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->END:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v0, v4}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 114
    :goto_2
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v1, v3

    .line 104
    goto :goto_1

    :cond_4
    move v0, v3

    .line 111
    goto :goto_2
.end method
