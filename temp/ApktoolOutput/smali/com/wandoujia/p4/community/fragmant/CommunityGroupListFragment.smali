.class public Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;
.super Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;
.source "CommunityGroupListFragment.java"

# interfaces
.implements Lfsz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment",
        "<",
        "Lffw;",
        ">;",
        "Lfsz;"
    }
.end annotation


# static fields
.field private static final e:I


# instance fields
.field private f:Lflb;

.field private g:Leup;

.field private h:Lfgy;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lfno;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;-><init>()V

    .line 76
    iput-boolean v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->l:Z

    .line 77
    iput-boolean v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->m:Z

    .line 78
    iput-boolean v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->n:Z

    .line 79
    iput-boolean v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->o:Z

    .line 80
    const-string v0, "game"

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->p:Ljava/lang/String;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "game"

    aput-object v1, v0, v2

    const-string v1, "tv"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "anime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "balloting"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->q:[Ljava/lang/String;

    .line 304
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->r()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->q:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->p:Ljava/lang/String;

    const-string v0, "balloting"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->j:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotNotifiyCardView;->a(Landroid/content/Context;)Lcom/wandoujia/p4/community/views/CommunityBallotNotifiyCardView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->j:Landroid/view/View;

    new-instance v1, Lfgv;

    invoke-direct {v1, p0}, Lfgv;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Leus;->a(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->i:Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_GROUP:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->j()V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->f:Lflb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->f:Lflb;

    invoke-virtual {v0}, Lflb;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->f:Lflb;

    :cond_2
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->s()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->r()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->o:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)Lfgy;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->h:Lfgy;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)Leup;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g:Leup;

    return-object v0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->i:Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_GROUP:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 220
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g()V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Leus;->c(Landroid/view/View;)Z

    .line 245
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->k()Leun;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Leun;->a(Ljava/util/List;)V

    .line 288
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->k()Leun;

    move-result-object v0

    invoke-virtual {v0}, Leun;->notifyDataSetChanged()V

    .line 289
    return-void
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
    .line 135
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->f:Lflb;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "balloting"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lfku;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Lfku;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->f:Lflb;

    .line 147
    :cond_0
    :goto_0
    new-instance v0, Lfsw;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->f:Lflb;

    new-instance v2, Lfgj;

    invoke-direct {v2}, Lfgj;-><init>()V

    invoke-direct {v0, v1, v2}, Lfsw;-><init>(Lfsi;Lfza;)V

    return-object v0

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->m:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    new-instance v0, Lfle;

    const-string v1, "not_joined"

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lfle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->f:Lflb;

    goto :goto_0

    .line 143
    :cond_2
    new-instance v0, Lfku;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Lfku;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->f:Lflb;

    goto :goto_0
.end method

.method protected final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->a(ILjava/util/concurrent/ExecutionException;)V

    .line 180
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e04f2

    sget v2, Ldxa;->a:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 184
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string v0, "launch_from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "community_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g()V

    goto :goto_0
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

    .line 153
    new-instance v0, Lfgx;

    invoke-direct {v0, p0, v2}, Lfgx;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;B)V

    .line 154
    new-instance v1, Lfgy;

    invoke-direct {v1, v2}, Lfgy;-><init>(B)V

    iput-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->h:Lfgy;

    .line 155
    new-instance v1, Leup;

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->h:Lfgy;

    invoke-direct {v1, v2}, Leup;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g:Leup;

    .line 156
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g:Leup;

    sget v2, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->e:I

    iput v2, v1, Leup;->a:I

    invoke-virtual {v1}, Leup;->notifyDataSetChanged()V

    .line 157
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g:Leup;

    sget v2, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->e:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Leup;->c:I

    .line 158
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g:Leup;

    sget v2, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->e:I

    iput v2, v1, Leup;->b:I

    .line 159
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g:Leup;

    sget v2, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->e:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Leup;->d:I

    .line 160
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->g:Leup;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Leup;->a(I)V

    .line 161
    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->s()V

    .line 199
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->i:Landroid/view/View;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_GROUP:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 201
    return-void
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method protected final e()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->e()V

    .line 173
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->q()V

    .line 174
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f0300f5

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onAttach(Landroid/app/Activity;)V

    .line 119
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const-string v1, "show_sub_categories"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->l:Z

    .line 96
    const-string v1, "filter_joined_groups"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->m:Z

    .line 97
    const-string v1, "has_subject_type_game"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->n:Z

    .line 98
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->n:Z

    if-nez v0, :cond_0

    .line 99
    const-string v0, "tv"

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->p:Ljava/lang/String;

    .line 102
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onDestroy()V

    .line 190
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->i()Lfst;

    move-result-object v0

    iget-object v0, v0, Lfst;->b:Lfsi;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lfsi;->b()V

    .line 194
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onDetach()V

    .line 125
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/p4/community/eventbus/CommunityEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    sget-object v0, Lfgw;->a:[I

    iget-object v1, p1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 334
    :pswitch_0
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->q()V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f0c02a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->i:Landroid/view/View;

    .line 109
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->l:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->k:Lfno;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfno;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lfno;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->k:Lfno;

    iget-boolean v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->n:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->k:Lfno;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v3, v1, Lfno;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lfno;->b:Leus;

    iget-object v3, v1, Lfno;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfno;->a(Leus;[Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->k:Lfno;

    iget-object v2, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    invoke-virtual {v1, v2, v0}, Lfno;->a(Leus;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->k:Lfno;

    new-instance v1, Lfnq;

    invoke-direct {v1, p0}, Lfnq;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)V

    iput-object v1, v0, Lfno;->d:Lfnq;

    .line 112
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->k()V

    .line 113
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Landroid/app/Activity;)V

    .line 114
    return-void
.end method
