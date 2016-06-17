.class public Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "CommunityTopicFeedCardView.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/wandoujia/p4/views/EmbeddedGridView;


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

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;
    .locals 1
    .parameter

    .prologue
    .line 29
    const v0, 0x7f0300a3

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;

    return-object v0
.end method


# virtual methods
.method public getGridView()Lcom/wandoujia/p4/views/EmbeddedGridView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->n:Lcom/wandoujia/p4/views/EmbeddedGridView;

    return-object v0
.end method

.method public getGroupNameTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLikeCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReplyCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimeTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 40
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->i:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0c026c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->k:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0c026d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->m:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0c0259

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->l:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c026a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/EmbeddedGridView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->n:Lcom/wandoujia/p4/views/EmbeddedGridView;

    .line 45
    const v0, 0x7f0c026b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->j:Landroid/widget/TextView;

    .line 46
    return-void
.end method
