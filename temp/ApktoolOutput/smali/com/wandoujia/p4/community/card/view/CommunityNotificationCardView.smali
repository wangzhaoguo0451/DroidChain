.class public Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "CommunityNotificationCardView.java"


# instance fields
.field private i:Lcom/wandoujia/p4/views/CircleAsyncImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/wandoujia/image/view/AsyncImageView;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;
    .locals 1
    .parameter

    .prologue
    .line 32
    const v0, 0x7f0300c4

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;

    return-object v0
.end method


# virtual methods
.method public getActionName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAvatar()Lcom/wandoujia/p4/views/CircleAsyncImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->i:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    return-object v0
.end method

.method public getMessage()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNickName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReference()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReplyPic()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->n:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public getTime()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 39
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/CircleAsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->i:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    .line 40
    const v0, 0x7f0c029e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->j:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0c029f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->k:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0c0259

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->l:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0c025a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->m:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c02a0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->n:Lcom/wandoujia/image/view/AsyncImageView;

    .line 45
    const v0, 0x7f0c02a1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->o:Landroid/widget/TextView;

    .line 46
    return-void
.end method
