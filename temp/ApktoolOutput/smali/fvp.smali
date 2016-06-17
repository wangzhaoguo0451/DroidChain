.class public final Lfvp;
.super Ljava/lang/Object;
.source "RecommendGiftCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;",
        "Lfvr;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lfvr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;Lfvr;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 25
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lfvp;->a:Lfvr;

    if-eq v0, p2, :cond_0

    .line 32
    iput-object p2, p0, Lfvp;->a:Lfvr;

    .line 34
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->getCardContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->getCardContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 36
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p2, Lfvr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 37
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->getCardContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f030097

    invoke-static {v0, v1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/card/views/ContentCardView;

    .line 40
    new-instance v3, Lfvm;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v3, v1}, Lfvm;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    .line 42
    iget-object v1, p2, Lfvr;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvq;

    invoke-virtual {v3, v0, v1}, Lfvm;->a(Lcom/wandoujia/p4/card/views/ContentCardView;Lfvq;)V

    .line 44
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->getCardContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    add-int/lit8 v0, v2, 0x1

    iget-object v1, p2, Lfvr;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 46
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->getCardContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03002b

    invoke-static {v1, v3}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->getBottomButton()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    new-instance v1, Lfaq;

    const v2, 0x7f010042

    const v3, 0x7f0e0465

    new-instance v4, Lfuk;

    invoke-direct {v4}, Lfuk;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto :goto_0
.end method

.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p1, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    check-cast p2, Lfvr;

    invoke-virtual {p0, p1, p2}, Lfvp;->a(Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;Lfvr;)V

    return-void
.end method
