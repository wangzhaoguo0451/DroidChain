.class public Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "CommunityCampaignItemView.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 34
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->i:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityCampaignItemView;->j:Landroid/widget/ImageView;

    .line 36
    return-void
.end method
