.class public Lcom/wandoujia/ripple_framework/fragment/TabFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "TabFragment.java"

# interfaces
.implements Lhia;


# instance fields
.field private a:Landroid/view/View;

.field public d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

.field public e:Landroid/support/v4/view/ViewPager;

.field public f:Lhbd;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhbe;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/wandoujia/ripple_framework/view/LoadingView;

.field protected i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhbe;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 77
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->g:Ljava/util/List;

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_1
    :goto_0
    new-instance v0, Lhbd;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->getChildFragmentManager()Ls;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhbd;-><init>(Landroid/content/Context;Ls;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->f:Lhbd;

    .line 97
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->f:Lhbd;

    iput-object p1, v0, Lhbd;->b:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->f:Lhbd;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgf;)V

    .line 99
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 100
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 101
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    invoke-virtual {v0, v3}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_tab_fragment:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->h:Lcom/wandoujia/ripple_framework/view/LoadingView;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->h:Lcom/wandoujia/ripple_framework/view/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/LoadingView;->setVisibility(I)V

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {v0}, Lhmj;->stop()V

    .line 132
    :cond_0
    return-void
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public navigateTo(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 136
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->e:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->g:Ljava/util/List;

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbe;

    iget-object v0, v0, Lhbe;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->c()I

    move-result v0

    invoke-static {p2, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->sliding_tab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->e:Landroid/support/v4/view/ViewPager;

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->a:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->sliding_tab_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->i:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lheb;

    invoke-direct {v1, p0}, Lheb;-><init>(Lcom/wandoujia/ripple_framework/fragment/TabFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Lhw;)V

    .line 74
    return-void
.end method
