.class public Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;
.super Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;
.source "CommunityTopicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment",
        "<",
        "Lfgf;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lfld;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;-><init>()V

    .line 153
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v0, "normal"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    new-array v1, v2, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 147
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->i()Lfst;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->i()Lfst;

    move-result-object v0

    invoke-virtual {v0}, Lfst;->c()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->g()V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    new-array v1, v2, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_FEATURE_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    goto :goto_1
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lfgf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->g:Lfld;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "feature"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lfld;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfld;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->g:Lfld;

    .line 83
    :cond_0
    :goto_0
    new-instance v0, Lfsw;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->g:Lfld;

    new-instance v2, Lfgm;

    invoke-direct {v2}, Lfgm;-><init>()V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lfld;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfld;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->g:Lfld;

    goto :goto_0
.end method

.method protected final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->a(ILjava/util/concurrent/ExecutionException;)V

    .line 91
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e04f2

    sget v2, Ldxa;->a:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 95
    :cond_0
    return-void
.end method

.method protected final b()Leun;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lfgf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lfib;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfib;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;B)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "normal"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_FEATURE_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_0
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected final e()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->e()V

    .line 135
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->q()V

    .line 136
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0300c8

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onAttach(Landroid/app/Activity;)V

    .line 109
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->f:Ljava/lang/String;

    .line 57
    const-string v1, "scope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->e:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "normal"

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->e:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onDestroy()V

    .line 100
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->i()Lfst;

    move-result-object v0

    iget-object v0, v0, Lfst;->b:Lfsi;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lfsi;->b()V

    .line 104
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onDetach()V

    .line 115
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 171
    :cond_0
    sget-object v0, Lfia;->a:[I

    iget-object v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;->q()V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/community/fragmant/CommunityNetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0c00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_0
    return-void
.end method
