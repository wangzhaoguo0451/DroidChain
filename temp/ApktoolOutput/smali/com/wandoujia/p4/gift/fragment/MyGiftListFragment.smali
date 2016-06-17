.class public Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "MyGiftListFragment.java"


# instance fields
.field public a:Lcom/wandoujia/p4/views/ContentListView;

.field private b:Lfvc;

.field private c:Lfun;

.field private d:Z

.field private e:Lfst;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfst",
            "<",
            "Lfvq;",
            ">;"
        }
    .end annotation
.end field

.field private f:Leus;

.field private g:Lcom/wandoujia/p4/views/FetchMoreFooterView;

.field private h:Landroid/os/Parcelable;

.field private i:I

.field private j:Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

.field private k:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

.field private l:Z

.field private m:Lfsr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsr",
            "<",
            "Lfvq;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lfsr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsr",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->l:Z

    .line 63
    new-instance v0, Lfuw;

    invoke-direct {v0, p0}, Lfuw;-><init>(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->m:Lfsr;

    .line 96
    new-instance v0, Lfux;

    invoke-direct {v0, p0}, Lfux;-><init>(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->n:Lfsr;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->i:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;)Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->j:Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/views/FetchMoreFooterView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->g:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    return-object v0
.end method

.method private a()Lfst;
    .locals 5

    .prologue
    .line 232
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->e:Lfst;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lfst;

    new-instance v1, Lfsw;

    new-instance v2, Lfve;

    iget-object v3, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->k:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-direct {v2, v3}, Lfve;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;)V

    new-instance v3, Lfvs;

    sget-object v4, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v3, v4}, Lfvs;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    invoke-direct {v1, v2, v3}, Lfsw;-><init>(Lfsi;Lfza;)V

    iget-object v2, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->m:Lfsr;

    invoke-direct {v0, v1, v2}, Lfst;-><init>(Lfsi;Lfsr;)V

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->e:Lfst;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->e:Lfst;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Leus;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->f:Leus;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->l:Z

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lfun;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->c:Lfun;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->h:Landroid/os/Parcelable;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/views/ContentListView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->h:Landroid/os/Parcelable;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->j:Lcom/wandoujia/p4/gift/views/RecommendGiftCardView;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->i:I

    return v0
.end method

.method public static synthetic j(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->needToLoadData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a()Lfst;

    move-result-object v0

    invoke-virtual {v0}, Lfst;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f030011

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->setHasOptionsMenu(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argumentType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->k:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    .line 141
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argumentHeaderView"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->l:Z

    .line 143
    :cond_0
    if-eqz p1, :cond_1

    .line 144
    const-string v0, "phoenix.intent.extra.LIST_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->h:Landroid/os/Parcelable;

    .line 146
    :cond_1
    return-void
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 158
    const v0, 0x7f0c00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ContentListView;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    .line 159
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-static {v0}, Lg;->a(Landroid/widget/AbsListView;)V

    .line 160
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-static {v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->g:Lcom/wandoujia/p4/views/FetchMoreFooterView;

    .line 162
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    new-instance v1, Lfuy;

    invoke-direct {v1, p0}, Lfuy;-><init>(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 181
    new-instance v0, Lfun;

    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lfun;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->c:Lfun;

    .line 182
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    new-instance v1, Leus;

    iget-object v2, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->c:Lfun;

    invoke-direct {v1, v2}, Leus;-><init>(Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->f:Leus;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Leuw;

    iget-object v3, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->f:Leus;

    invoke-direct {v2, v3, v1, v1}, Leuw;-><init>(Landroid/widget/BaseAdapter;II)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/views/ContentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->d:Z

    .line 184
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->d:Z

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->c:Lfun;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->c:Lfun;

    invoke-virtual {v0}, Lfun;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "phoenix.intent.extra.LIST_STATE"

    iget-object v1, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/views/ContentListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->l:Z

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lfvc;

    invoke-direct {v0}, Lfvc;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->b:Lfvc;

    .line 224
    iget-object v0, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->b:Lfvc;

    const/4 v1, 0x0

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->n:Lfsr;

    invoke-virtual {v0, v1, v2, v3}, Lfvc;->a(IILfsr;)V

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a()Lfst;

    move-result-object v0

    invoke-virtual {v0}, Lfst;->a()V

    .line 229
    return-void
.end method
