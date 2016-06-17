.class public final Lfux;
.super Ljava/lang/Object;
.source "MyGiftListFragment.java"

# interfaces
.implements Lfsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfsr",
        "<",
        "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lfux;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILfss;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    .line 103
    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 108
    new-instance v3, Lfvq;

    sget-object v4, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setGiftViewType(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    move-result-object v0

    sget-object v4, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v3, v0, v4}, Lfvq;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    :cond_2
    :goto_1
    return-void

    .line 119
    :cond_3
    iget-object v0, p0, Lfux;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->h(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 120
    iget-object v0, p0, Lfux;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    iget-object v2, p0, Lfux;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->f(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/views/ContentListView;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;)Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    .line 123
    :cond_4
    new-instance v0, Lfvp;

    invoke-direct {v0}, Lfvp;-><init>()V

    .line 125
    iget-object v2, p0, Lfux;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->h(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    move-result-object v2

    new-instance v3, Lfvr;

    invoke-direct {v3, v1}, Lfvr;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Lfvp;->a(Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;Lfvr;)V

    .line 126
    iget-object v0, p0, Lfux;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->b(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Leus;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lfux;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->h(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leus;->a(ILandroid/view/View;)V

    goto :goto_1
.end method

.method public final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    return-void
.end method
