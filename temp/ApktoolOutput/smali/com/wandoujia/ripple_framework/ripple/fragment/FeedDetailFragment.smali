.class public Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;
.source "FeedDetailFragment.java"


# static fields
.field public static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private q:Lcom/wandoujia/ripple_framework/model/Model;

.field private r:Lerf;

.field private s:Lhib;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/view/ViewGroup;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$dimen;->feed_detail_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->b:I

    .line 56
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$dimen;->toolbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->c:I

    .line 58
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$dimen;->toolbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->d:I

    .line 60
    sget v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->b:I

    sget v1, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->d:I

    add-int/2addr v0, v1

    sput v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->a:I

    .line 62
    sget v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->b:I

    sget v1, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->c:I

    add-int/2addr v0, v1

    sput v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->v:Z

    .line 76
    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->w:Z

    .line 78
    iput v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->x:I

    .line 79
    iput v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->y:I

    .line 80
    iput v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->z:I

    .line 396
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->z:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->w:Z

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->w:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->z:I

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->u:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->v:Z

    return p1
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->z:I

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;)Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    return-object v0
.end method

.method public static synthetic e()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->e:I

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;)Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    return-object v0
.end method

.method public static synthetic g()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->b:I

    return v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Lhkh;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->q:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v0, v1}, Lhkh;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-object v0
.end method

.method protected final a()Lum;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lhbg;

    invoke-direct {v0}, Lhbg;-><init>()V

    return-object v0
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 158
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->rip_feed_detail_provider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->t:Landroid/view/ViewGroup;

    .line 159
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->feed_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->u:Landroid/view/ViewGroup;

    .line 160
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->toolbarMargin:Landroid/view/View;

    sget v1, Lcom/wandoujia/ripple_framework/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    new-instance v1, Lhka;

    invoke-direct {v1, p0}, Lhka;-><init>(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lup;)V

    .line 210
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/wandoujia/ripple_framework/R$drawable;->cancel_black:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 212
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    sget v1, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->b:I

    sget v2, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->b:I

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/wandoujia/ripple_framework/R$dimen;->toolbar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/wandoujia/ripple_framework/R$dimen;->pull_to_refresh_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->a(II)V

    .line 218
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->q:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_0

    .line 221
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->stub_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Leqz",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 261
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->n:Leqw;

    check-cast v0, Lhkh;

    iget-object v0, v0, Lhkh;->d:Lcom/wandoujia/ripple_framework/model/Model;

    sget v1, Lcom/wandoujia/ripple_framework/R$layout;->rip_toolbar_menu_feed:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->createToolbarMenu(I)Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->toolbarContainer:Landroid/view/ViewGroup;

    invoke-static {v1}, Ld;->b(Landroid/view/ViewGroup;)Lerf;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->r:Lerf;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->r:Lerf;

    invoke-virtual {v1, v0}, Lerf;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->t:Landroid/view/ViewGroup;

    new-instance v2, Lerf;

    invoke-direct {v2, v1}, Lerf;-><init>(Landroid/view/View;)V

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->open_app:I

    new-instance v3, Lhky;

    invoke-direct {v3}, Lhky;-><init>()V

    invoke-virtual {v2, v1, v3, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lerf;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->t:Landroid/view/ViewGroup;

    new-instance v2, Lhib;

    invoke-direct {v2, v4}, Lhib;-><init>(B)V

    iput-object v2, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->s:Lhib;

    sget-object v2, Lham;->f:Lham;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Lerf;

    invoke-direct {v2, v1}, Lerf;-><init>(Landroid/view/View;)V

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->icon:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v2, v1, v3, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->title:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->channel:I

    new-instance v3, Lhja;

    invoke-direct {v3}, Lhja;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->install_app:I

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->s:Lhib;

    invoke-virtual {v1, v2, v3, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->follow:I

    new-instance v3, Lhjd;

    invoke-direct {v3}, Lhjd;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v1

    new-instance v2, Lhkd;

    invoke-direct {v2}, Lhkd;-><init>()V

    invoke-virtual {v1, v4, v2, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v1

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->f:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1, v0}, Lerf;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lhkc;

    invoke-direct {v1, p0}, Lhkc;-><init>(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lhkb;

    invoke-direct {v1, p0}, Lhkb;-><init>(Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 286
    iget v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->x:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->y:I

    if-eqz v0, :cond_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getLayoutManager()Luo;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->x:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->n:Leqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->b()V

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    :cond_2
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_feed_page:I

    return v0
.end method

.method protected final d_()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lhkg;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v0}, Lhkg;-><init>()V

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lham;->f:Lham;

    invoke-virtual {v0}, Lham;->c()Lhaw;

    move-result-object v0

    return-object v0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 308
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->q:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v2, :cond_0

    .line 313
    :goto_0
    return v0

    .line 311
    :cond_0
    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v3, "%s/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ripple://items"

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->q:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    move v0, v1

    .line 313
    goto :goto_0
.end method

.method protected initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V

    .line 226
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$color;->bg_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 227
    return-void
.end method

.method public isSystemBarEnabled()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->v:Z

    return v0
.end method

.method protected final n()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected final o()Z
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v0, "item_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->x:I

    .line 100
    const-string v0, "item_offset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->y:I

    .line 102
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lhea;

    invoke-interface {v0, p0}, Lhea;->a(Landroid/support/v4/app/Fragment;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->q:Lcom/wandoujia/ripple_framework/model/Model;

    .line 89
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->q:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$string;->network_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onDestroy()V

    .line 243
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onDestroyView()V

    .line 232
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->r:Lerf;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->r:Lerf;

    invoke-virtual {v0}, Lerf;->a()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->s:Lhib;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->s:Lhib;

    invoke-virtual {v0}, Lhib;->a()V

    .line 238
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "TRANS_Y"

    iget v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->z:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v0, "item_position"

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getScrollItemIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v0, "item_offset"

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getScrollItemOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    sget v1, Lcom/wandoujia/ripple_framework/R$layout;->ripple_empty_view_for_detail:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    .line 108
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v1, Lhjz;

    invoke-direct {v1}, Lhjz;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 115
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->k:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->d:Z

    .line 116
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string v0, "TRANS_Y"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->z:I

    .line 135
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->u:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;->z:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 137
    :cond_0
    return-void
.end method
