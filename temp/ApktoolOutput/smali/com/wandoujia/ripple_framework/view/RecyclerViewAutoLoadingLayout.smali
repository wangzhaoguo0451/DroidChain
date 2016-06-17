.class public Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "RecyclerViewAutoLoadingLayout.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/widget/SwipeRefreshLayout;",
        "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lhmy;

.field private e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

.field private f:Lert;

.field private g:Leqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/View;

.field private i:I

.field private j:Lhmx;

.field private k:Lhmw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lhms;

    invoke-direct {v0}, Lhms;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->k:Lhmw;

    .line 73
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->c()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Lhms;

    invoke-direct {v0}, Lhms;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->k:Lhmw;

    .line 78
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->c()V

    .line 79
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;)Lhmy;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->d:Lhmy;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->j:Lhmx;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->j:Lhmx;

    invoke-interface {v0, p1}, Lhmx;->a(Landroid/view/View;)V

    .line 343
    :cond_0
    return-void
.end method

.method private a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    if-eqz p2, :cond_2

    .line 291
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setRefreshing(Z)V

    .line 292
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->f:Lert;

    :cond_0
    :goto_0
    move-object v1, v0

    move v0, v2

    .line 302
    :goto_1
    invoke-virtual {v1, v0}, Lert;->a(Z)V

    .line 305
    :cond_1
    return-void

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->g:Leqw;

    iget-boolean v0, v0, Leqw;->c:Z

    if-nez v0, :cond_3

    .line 294
    invoke-virtual {p0, v2}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setRefreshing(Z)V

    .line 295
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->f:Lert;

    goto :goto_0

    .line 298
    :cond_3
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    if-ne p1, v0, :cond_4

    .line 299
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setRefreshing(Z)V

    .line 300
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->f:Lert;

    goto :goto_0

    .line 301
    :cond_4
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ADD:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    if-ne p1, v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->f:Lert;

    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Z

    if-nez v3, :cond_0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_view_empty_tip:I

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->i:I

    .line 87
    new-instance v0, Lhmt;

    invoke-direct {v0}, Lhmt;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->j:Lhmx;

    .line 94
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->k:Lhmw;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->g:Leqw;

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    invoke-interface {v0, v1, v2}, Lhmw;->a(Leqw;Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->b()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->g:Leqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->g:Leqw;

    invoke-virtual {v0}, Leqw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgs;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->g:Leqw;

    invoke-virtual {v0}, Leqw;->g()V

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Z)V

    .line 237
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 1
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
    .line 241
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->d()V

    .line 242
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    if-eq p1, v0, :cond_0

    .line 245
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ADD:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    if-ne p1, v0, :cond_0

    .line 246
    iget v0, p2, Leqz;->a:I

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->a()V

    .line 250
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Leqz;->f:Z

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Z)V

    .line 251
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e()V

    .line 252
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Z)V

    .line 257
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 109
    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    if-eq v2, v3, :cond_0

    .line 111
    const-string v3, "RecyclerViewAutoLoadingLayout"

    const-string v4, "bring loading view to front"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->a(Landroid/view/View;)V

    .line 326
    :goto_0
    return-void

    .line 322
    :cond_0
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->i:I

    invoke-static {p0, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    .line 323
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->a(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getRecyclerView()Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->onFinishInflate()V

    .line 139
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->recycler_view:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    .line 140
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$dimen;->toolbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$dimen;->refresh_circle_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$dimen;->pull_to_refresh_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->a(II)V

    .line 144
    new-instance v0, Lmh;

    invoke-direct {v0, p0}, Lmh;-><init>(Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setOnRefreshListener(Lmh;)V

    .line 152
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-super/range {p0 .. p5}, Landroid/support/v4/widget/SwipeRefreshLayout;->onLayout(ZIIII)V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    .line 121
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getMeasuredWidth()I

    move-result v1

    .line 123
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getMeasuredHeight()I

    move-result v2

    .line 124
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getPaddingLeft()I

    move-result v3

    .line 125
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getPaddingTop()I

    move-result v4

    .line 126
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    .line 127
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    .line 128
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 130
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->onMeasure(II)V

    .line 99
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    .line 100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 101
    invoke-virtual {p0, v0, p1, p2}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->measureChild(Landroid/view/View;II)V

    .line 103
    :cond_0
    return-void
.end method

.method public setAdapter(Lhaz;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    new-instance v0, Lhmu;

    invoke-direct {v0}, Lhmu;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->f:Lert;

    .line 221
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->getLayoutManager()Luo;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->f:Lert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lert;->a(Z)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e:Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->setAdapter(Luh;)V

    .line 227
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e()V

    .line 228
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->f:Lert;

    invoke-virtual {p1, v0}, Lhaz;->b(Lert;)V

    goto :goto_0
.end method

.method public setEmptyDataChecker(Lhmw;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->k:Lhmw;

    .line 83
    return-void
.end method

.method public setEmptyLayout(I)V
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->removeView(Landroid/view/View;)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->h:Landroid/view/View;

    .line 269
    :cond_0
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->i:I

    .line 270
    return-void
.end method

.method public setEmptyViewRender(Lhmx;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->j:Lhmx;

    .line 274
    return-void
.end method

.method public setList(Leqw;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->g:Leqw;

    .line 160
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->d()V

    .line 161
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->e()V

    .line 162
    new-instance v0, Lhmy;

    invoke-direct {v0, p0, p1}, Lhmy;-><init>(Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;Leqw;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setOnLoadListener(Lhmy;)V

    .line 182
    return-void
.end method

.method public setOnLoadListener(Lhmy;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->d:Lhmy;

    .line 156
    return-void
.end method

.method public setSwipeRefreshEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 134
    return-void
.end method
