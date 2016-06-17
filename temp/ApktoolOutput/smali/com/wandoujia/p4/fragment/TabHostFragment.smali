.class public abstract Lcom/wandoujia/p4/fragment/TabHostFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "TabHostFragment.java"

# interfaces
.implements Lfsx;


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

.field public b:Landroid/view/View;

.field public c:Lhw;

.field private d:Lcom/wandoujia/p4/views/CommonViewPager;

.field private e:Lftr;

.field private f:I

.field private g:I

.field private h:Lhw;

.field private i:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->g:I

    .line 40
    new-instance v0, Lfts;

    invoke-direct {v0, p0}, Lfts;-><init>(Lcom/wandoujia/p4/fragment/TabHostFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->h:Lhw;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->i:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/fragment/TabHostFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/fragment/TabHostFragment;)Lhw;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->c:Lhw;

    return-object v0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v1, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    if-eqz p2, :cond_0

    iget-object v0, v1, Lftr;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, v1, Lftr;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, Lftr;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lfsz;

    if-eqz v1, :cond_0

    check-cast v0, Lfsz;

    invoke-interface {v0, p2}, Lfsz;->a(Landroid/os/Bundle;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->d:Lcom/wandoujia/p4/views/CommonViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/p4/views/CommonViewPager;->a(IZ)V

    .line 262
    return-void

    .line 260
    :cond_1
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object p2, v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/fragment/TabHostFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->f:I

    return v0
.end method

.method private d()I
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {v1, v0}, Lftr;->a(Ljava/lang/String;)I

    move-result v0

    .line 148
    if-ltz v0, :cond_0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f030013

    return v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {v0, p1}, Lftr;->a(Ljava/lang/String;)I

    move-result v0

    .line 266
    if-ltz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {v0, p1}, Lftr;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(ILandroid/os/Bundle;)V

    .line 269
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {v0, p1}, Lftr;->b(Ljava/util/List;)V

    .line 379
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->a:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a()V

    .line 380
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->g:I

    if-ltz v0, :cond_1

    .line 185
    iget v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->g:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {v0, p1}, Lftr;->a_(I)Lhow;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lhow;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lhow;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {v0, p1}, Lftr;->a(Ljava/util/List;)V

    .line 384
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->a:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a()V

    .line 385
    return-void
.end method

.method public final c(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {v0, p1}, Lftr;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;"
        }
    .end annotation
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->d:Lcom/wandoujia/p4/views/CommonViewPager;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->d:Lcom/wandoujia/p4/views/CommonViewPager;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/CommonViewPager;->getCurrentItem()I

    move-result v0

    .line 311
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->d()I

    move-result v0

    goto :goto_0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const v1, 0x7f0c0109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->a:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->a:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setAllCaps(Z)V

    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/CommonViewPager;

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->d:Lcom/wandoujia/p4/views/CommonViewPager;

    .line 111
    new-instance v0, Lftr;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->getChildFragmentManager()Ls;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lftr;-><init>(Landroid/content/Context;Ls;)V

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    .line 112
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->c()Ljava/util/List;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->d:Lcom/wandoujia/p4/views/CommonViewPager;

    iget-object v2, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/views/CommonViewPager;->setAdapter(Lgf;)V

    .line 114
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftr;->a(Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->e:Lftr;

    iget-object v0, v0, Lgf;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 117
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->d()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->f:I

    .line 118
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last_selected_item_pos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->d:Lcom/wandoujia/p4/views/CommonViewPager;

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "last_selected_item_pos"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/views/CommonViewPager;->a(IZ)V

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->a:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->d:Lcom/wandoujia/p4/views/CommonViewPager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 125
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->a:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->h:Lhw;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setOnPageChangeListener(Lhw;)V

    .line 126
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->d:Lcom/wandoujia/p4/views/CommonViewPager;

    iget v1, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->f:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/CommonViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->setHasOptionsMenu(Z)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 342
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDestroy()V

    .line 343
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 389
    const-string v0, "last_selected_item_pos"

    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 395
    if-eqz p1, :cond_0

    .line 396
    const-string v0, "last_selected_item_pos"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 397
    if-eq v0, v1, :cond_0

    .line 398
    invoke-direct {p0, v0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->a(ILandroid/os/Bundle;)V

    .line 401
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 402
    return-void
.end method
