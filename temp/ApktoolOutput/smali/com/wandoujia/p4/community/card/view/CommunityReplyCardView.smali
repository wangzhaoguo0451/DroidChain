.class public Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "CommunityReplyCardView.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;
    .locals 1
    .parameter

    .prologue
    .line 30
    const v0, 0x7f0300a1

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;

    return-object v0
.end method


# virtual methods
.method public getReference()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReferenceBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->j:Landroid/view/View;

    return-object v0
.end method

.method public getReplyImageView()Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->l:Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    return-object v0
.end method

.method public getReplyTimeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRoleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSequenceView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 41
    const v0, 0x7f0c0263

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->i:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->l:Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    .line 43
    const v0, 0x7f0c0265

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->j:Landroid/view/View;

    .line 44
    const v0, 0x7f0c0264

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->k:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c0259

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->m:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0c0258

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->n:Landroid/widget/TextView;

    .line 47
    return-void
.end method
