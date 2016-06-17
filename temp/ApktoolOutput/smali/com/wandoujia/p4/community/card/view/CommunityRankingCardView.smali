.class public Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "CommunityRankingCardView.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/wandoujia/image/view/AsyncImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;
    .locals 1
    .parameter

    .prologue
    .line 25
    const v0, 0x7f0300c6

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;

    return-object v0
.end method


# virtual methods
.method public getAvatarView()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->k:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public getContentView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 37
    const v0, 0x7f0c00de

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->k:Lcom/wandoujia/image/view/AsyncImageView;

    .line 38
    const v0, 0x7f0c029b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->i:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityRankingCardView;->j:Landroid/widget/TextView;

    .line 40
    return-void
.end method
