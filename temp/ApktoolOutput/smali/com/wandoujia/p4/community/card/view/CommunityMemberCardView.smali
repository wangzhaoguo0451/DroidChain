.class public Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "CommunityMemberCardView.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/wandoujia/image/view/AsyncImageView;

.field private n:Lcom/wandoujia/p4/button/views/SubActionButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;
    .locals 1
    .parameter

    .prologue
    .line 29
    const v0, 0x7f0300c2

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;

    return-object v0
.end method


# virtual methods
.method public getAvatarView()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->m:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public getContentView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRoleLabelView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSelfLabelView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubActionButton()Lcom/wandoujia/p4/button/views/SubActionButton;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->n:Lcom/wandoujia/p4/button/views/SubActionButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 41
    const v0, 0x7f0c00de

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->m:Lcom/wandoujia/image/view/AsyncImageView;

    .line 42
    const v0, 0x7f0c029b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->i:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->j:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c029c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->k:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c029d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->l:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0c0250

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/SubActionButton;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityMemberCardView;->n:Lcom/wandoujia/p4/button/views/SubActionButton;

    .line 47
    return-void
.end method
