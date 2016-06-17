.class public Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;
.super Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;
.source "CommunityUserInfoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment",
        "<",
        "Lffw;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

.field private f:Lflb;

.field private g:Leup;

.field private h:Lfil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;-><init>()V

    .line 170
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)Lfil;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->h:Lfil;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)Leup;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->g:Leup;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    return-object v0
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lffw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->f:Lflb;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lfle;

    const-string v1, "joined"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lfle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->f:Lflb;

    .line 103
    :cond_0
    new-instance v0, Lfsw;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->f:Lflb;

    new-instance v2, Lfgj;

    invoke-direct {v2}, Lfgj;-><init>()V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    return-object v0
.end method

.method protected final b()Leun;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lffw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v0, Lfik;

    invoke-direct {v0, p0, v2}, Lfik;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;B)V

    .line 110
    new-instance v1, Lfil;

    invoke-direct {v1, v2}, Lfil;-><init>(B)V

    iput-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->h:Lfil;

    .line 111
    new-instance v1, Leup;

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->h:Lfil;

    invoke-direct {v1, v2}, Leup;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->g:Leup;

    .line 112
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->g:Leup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Leup;->a(I)V

    .line 113
    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    const v1, 0x7f0c0426

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->k()Leun;

    move-result-object v0

    invoke-virtual {v0}, Leun;->b()V

    .line 132
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0300f4

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onDestroy()V

    .line 120
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->i()Lfst;

    move-result-object v0

    iget-object v0, v0, Lfst;->b:Lfsi;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lfsi;->b()V

    .line 124
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onDetach()V

    .line 81
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-object v0, Lfij;->a:[I

    iget-object v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    const v1, 0x7f0c0426

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lfim;

    invoke-direct {v0, p0, v2}, Lfim;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->g()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 57
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NEED_LOGIN:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->a(Landroid/content/Context;)Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    invoke-virtual {v0, v1}, Leus;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->e:Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->a()V

    .line 96
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onStartLoading()V

    .line 69
    new-instance v0, Lfim;

    invoke-direct {v0, p0, v1}, Lfim;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method
