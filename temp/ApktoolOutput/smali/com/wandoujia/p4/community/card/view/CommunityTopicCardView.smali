.class public Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "CommunityTopicCardView.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/wandoujia/p4/views/EmbeddedGridView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;
    .locals 1
    .parameter

    .prologue
    .line 31
    const v0, 0x7f0300a4

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;

    return-object v0
.end method


# virtual methods
.method public getGridView()Lcom/wandoujia/p4/views/EmbeddedGridView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->m:Lcom/wandoujia/p4/views/EmbeddedGridView;

    return-object v0
.end method

.method public getLikeCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReplyCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRoleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTagTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimeTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 42
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->i:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0c026c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->j:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c026d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->l:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c0259

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->k:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0c026a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/EmbeddedGridView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->m:Lcom/wandoujia/p4/views/EmbeddedGridView;

    .line 47
    const v0, 0x7f0c0250

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->findViewById(I)Landroid/view/View;

    .line 48
    const v0, 0x7f0c0258

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityTopicCardView;->n:Landroid/widget/TextView;

    .line 49
    return-void
.end method
