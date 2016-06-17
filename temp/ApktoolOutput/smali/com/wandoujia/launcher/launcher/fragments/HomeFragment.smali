.class public Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "HomeFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/wandoujia/logv3/toolkit/LogViewPager;

.field private c:Lcom/wandoujia/launcher/view/SlidingTabDot;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 32
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->navigation_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->status_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->wallpaper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/view/WallpaperView;

    new-instance v1, Leec;

    invoke-direct {v1, v0}, Leec;-><init>(Lcom/wandoujia/launcher/view/WallpaperView;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Leec;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lcom/wandoujia/launcher/adapter/HomeAdapter;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->getChildFragmentManager()Ls;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/wandoujia/launcher/adapter/HomeAdapter;-><init>(Ls;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->a:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->view_pager:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/toolkit/LogViewPager;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->b:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->b:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->setAdapter(Lgf;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->b:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    sget-object v2, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->b:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/adapter/HomeAdapter;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->sliding_tab_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/view/SlidingTabDot;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->c:Lcom/wandoujia/launcher/view/SlidingTabDot;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->c:Lcom/wandoujia/launcher/view/SlidingTabDot;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$drawable;->sliding_tab_dot_normal:I

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->sliding_tab_dot_selected:I

    iput v1, v0, Lcom/wandoujia/launcher/view/SlidingTabDot;->a:I

    iput v2, v0, Lcom/wandoujia/launcher/view/SlidingTabDot;->b:I

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->c:Lcom/wandoujia/launcher/view/SlidingTabDot;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->b:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/view/SlidingTabDot;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->wallpaper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lead;

    invoke-direct {v1, p0}, Lead;-><init>(Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->game_launcher_home:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->a:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;->a:Landroid/view/View;

    return-object v0
.end method
