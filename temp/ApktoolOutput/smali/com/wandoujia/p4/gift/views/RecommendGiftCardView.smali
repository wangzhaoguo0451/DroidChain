.class public Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "RecommendGiftCardView.java"


# instance fields
.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/wandoujia/p4/button/views/StatefulButton;

.field private k:Lcom/wandoujia/p4/button/views/StatefulButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;
    .locals 1
    .parameter

    .prologue
    .line 28
    const v0, 0x7f0300ac

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    return-object v0
.end method


# virtual methods
.method public getBottomButton()Lcom/wandoujia/p4/button/views/StatefulButton;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->j:Lcom/wandoujia/p4/button/views/StatefulButton;

    return-object v0
.end method

.method public getCardContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 35
    const v0, 0x7f0c0277

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->i:Landroid/widget/LinearLayout;

    .line 36
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->j:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 37
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->k:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 38
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;->k:Lcom/wandoujia/p4/button/views/StatefulButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setVisibility(I)V

    .line 39
    return-void
.end method
