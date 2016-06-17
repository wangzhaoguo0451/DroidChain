.class public Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "HomeFragment.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Legi;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->wallpaper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;

    .line 70
    new-instance v1, Legv;

    invoke-direct {v1, v0}, Legv;-><init>(Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Legv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    new-instance v1, Legq;

    invoke-direct {v1, p0}, Legq;-><init>(Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v0, Legi;

    invoke-direct {v0}, Legi;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b:Legi;

    .line 81
    iget-object v1, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b:Legi;

    iget-object v2, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v1, Legi;->e:Landroid/os/Handler;

    sget v0, Legi;->a:I

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Legl;

    invoke-direct {v0, v1}, Legl;-><init>(Legi;)V

    iput-object v0, v1, Legi;->b:Lgf;

    sget v0, Lcom/wandoujia/launcher_base/R$id;->view_pager:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, v1, Legi;->c:Landroid/support/v4/view/ViewPager;

    iget-object v0, v1, Legi;->c:Landroid/support/v4/view/ViewPager;

    iget-object v3, v1, Legi;->b:Lgf;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgf;)V

    iget-object v0, v1, Legi;->c:Landroid/support/v4/view/ViewPager;

    iget-object v3, v1, Legi;->f:Lhw;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    sget v0, Lcom/wandoujia/launcher_base/R$id;->sliding_tab_dot:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;

    iput-object v0, v1, Legi;->d:Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;

    .line 82
    return-void
.end method

.method public final b()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->pager_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->c:Landroid/view/View;

    .line 113
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->navigation_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_base/R$id;->status_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a()V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    sget v0, Lcom/wandoujia/launcher_base/R$layout;->launcher_home_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 47
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b:Legi;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/fragment/HomeFragment;->b:Legi;

    iput-object v1, v0, Legi;->c:Landroid/support/v4/view/ViewPager;

    iput-object v1, v0, Legi;->d:Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;

    .line 50
    :cond_0
    return-void
.end method
