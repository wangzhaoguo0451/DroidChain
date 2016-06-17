.class public Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "CommunityBallotStatusFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Landroid/widget/TextView;

.field private e:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 146
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->d:Landroid/widget/TextView;

    const v1, 0x7f0e01bd

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->e:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->e:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020009

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->c:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    const v3, 0x7f0a0044

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->d:Landroid/widget/TextView;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e01c5

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getBallotCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b:Lcom/wandoujia/p4/button/views/StatefulButton;

    invoke-virtual {v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b:Lcom/wandoujia/p4/button/views/StatefulButton;

    new-instance v2, Lfaq;

    const v3, 0x7f0e01c1

    new-instance v4, Lfns;

    invoke-direct {v4, v0, p1}, Lfns;-><init>(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    invoke-direct {v2, v3, v4, v7}, Lfaq;-><init>(ILcom/wandoujia/mvc/Action;Z)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->isCurUserBalloted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b:Lcom/wandoujia/p4/button/views/StatefulButton;

    new-instance v2, Lfaq;

    const v3, 0x7f0e01c2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6}, Lfaq;-><init>(ILcom/wandoujia/mvc/Action;Z)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    iget-object v0, v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b:Lcom/wandoujia/p4/button/views/StatefulButton;

    const v1, 0x7f020343

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setBackgroundResource(I)V

    :cond_2
    const v0, 0x7f0e01df

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->e:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    return-object v0
.end method


# virtual methods
.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Lfgt;

    invoke-direct {v0, p0, v2}, Lfgt;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;B)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lfgu;

    invoke-direct {v0, p0, v2}, Lfgu;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 83
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->a:Ljava/lang/String;

    .line 52
    const-string v1, "video_detail_ballot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->b:Z

    .line 53
    const-string v1, "show_nominate_card"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->c:Z

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 59
    const v0, 0x7f0300ba

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    const v0, 0x7f0c028a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->e:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    .line 61
    const v0, 0x7f0c0289

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->d:Landroid/widget/TextView;

    .line 62
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->b:Z

    if-eqz v0, :cond_0

    .line 63
    const v0, 0x7f0c0288

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;

    const v2, -0xb1631a

    iput v2, v0, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->a:I

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotProgressView;->postInvalidate()V

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->c:Z

    if-nez v0, :cond_1

    .line 66
    const v0, 0x7f0c0294

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->e:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    const v2, 0x7f0c0293

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_1
    const v0, 0x7f0c0295

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lfgs;

    invoke-direct {v2, p0}, Lfgs;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDetach()V

    .line 89
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    sget-object v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lfgt;

    invoke-direct {v0, p0, v2}, Lfgt;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;B)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 110
    new-instance v0, Lfgu;

    invoke-direct {v0, p0, v2}, Lfgu;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityBallotStatusFragment;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method
