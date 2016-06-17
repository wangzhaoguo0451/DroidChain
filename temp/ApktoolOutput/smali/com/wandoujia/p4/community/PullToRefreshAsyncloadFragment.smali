.class public abstract Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;
.super Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;
.source "PullToRefreshAsyncloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
        "<TM;>;"
    }
.end annotation


# static fields
.field private static final e:I


# instance fields
.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 30
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;-><init>()V

    .line 33
    iput v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->f:I

    .line 34
    iput v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->g:I

    .line 36
    iput-boolean v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->h:Z

    .line 37
    iput-boolean v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->i:Z

    .line 38
    iput-boolean v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->j:Z

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->g:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->h:Z

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->h:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->g:I

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->f:I

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->i:Z

    return p1
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->j:Z

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->f:I

    return v0
.end method

.method public static synthetic f()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->e:I

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->i:Z

    return v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->j:Z

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public a(IILfss;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(IILfss;)V

    .line 181
    invoke-direct {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->q()V

    .line 182
    return-void
.end method

.method public a(ILjava/util/concurrent/ExecutionException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(ILjava/util/concurrent/ExecutionException;)V

    .line 188
    invoke-direct {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->q()V

    .line 189
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->j:Z

    .line 171
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    sget-object v1, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->LOADING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a(Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;)V

    goto :goto_0
.end method

.method public onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a(Landroid/content/Context;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a()V

    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->c:Leuu;

    iget-object v1, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    invoke-virtual {v0, v1}, Leus;->a(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->k:Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    if-eqz v0, :cond_0

    new-instance v1, Lfcg;

    invoke-direct {v1, p0, v0}, Lfcg;-><init>(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v1, Lfch;

    invoke-direct {v1, p0}, Lfch;-><init>(Lcom/wandoujia/p4/community/PullToRefreshAsyncloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
