.class public abstract Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;
.super Lcom/wandoujia/p4/fragment/TabHostFragment;
.source "BaseDetailTabHostFragment.java"


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field private d:Z

.field private final e:Lfne;

.field private final f:Lefm;

.field private final g:Leax;

.field private h:Lcom/wandoujia/p4/views/ScrollDownLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/TabHostFragment;-><init>()V

    .line 32
    new-instance v0, Lfqh;

    invoke-direct {v0, p0}, Lfqh;-><init>(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->e:Lfne;

    .line 43
    new-instance v0, Lfqi;

    invoke-direct {v0, p0}, Lfqi;-><init>(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->f:Lefm;

    .line 54
    new-instance v0, Lfqj;

    invoke-direct {v0}, Lfqj;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->g:Leax;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->d:Z

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->g()V

    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->isReverseProxyOn()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->d:Z

    if-nez v3, :cond_1

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->isReverseProxyOn()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->i()V

    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h()V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->d:Z

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->d:Z

    if-nez v0, :cond_a

    .line 149
    :goto_2
    return-void

    .line 145
    :cond_4
    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lfna;->a()Lfna;

    move-result-object v0

    invoke-virtual {v0}, Lfna;->b()I

    move-result v0

    if-eq v0, v5, :cond_b

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v3}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->i()V

    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h()V

    goto :goto_1

    :cond_6
    invoke-static {v3}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lfna;->a()Lfna;

    move-result-object v3

    invoke-virtual {v3}, Lfna;->b()I

    move-result v3

    if-ne v3, v5, :cond_8

    iget-object v3, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    sget-object v4, Lcom/wandoujia/p4/tips/TipsType;->NO_FLOW_TIPS_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v3, v4}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    :cond_7
    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->i()V

    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h()V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->i()V

    iget-object v3, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    sget-object v4, Lcom/wandoujia/p4/tips/TipsType;->NO_NETWORK_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v3, v4}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_1

    .line 148
    :cond_a
    invoke-virtual {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->e()V

    goto :goto_2

    :cond_b
    move v0, v2

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->NO_NETWORK_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->NO_FLOW_TIPS_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getMaxOffset()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->a:Landroid/widget/FrameLayout;

    int-to-float v0, v0

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 123
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setMaxOffset(I)V

    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setEnable(Z)V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->c()V

    .line 117
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 133
    new-instance v1, Lfqm;

    invoke-direct {v1, p0}, Lfqm;-><init>(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->g()V

    goto :goto_0
.end method

.method public abstract e()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->a:Landroid/widget/FrameLayout;

    .line 80
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    const v1, 0x7f0c0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ScrollDownLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    .line 81
    iget-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lfqk;

    invoke-direct {v1, p0}, Lfqk;-><init>(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    :cond_0
    new-instance v0, Lfql;

    invoke-direct {v0, p0}, Lfql;-><init>(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)V

    .line 108
    iget-object v1, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->h:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setOnScrollChangedListener(Lgqi;)V

    .line 110
    invoke-virtual {p0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->d()V

    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/TabHostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->f:Lefm;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lefm;)V

    .line 72
    invoke-static {}, Lfna;->a()Lfna;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->e:Lfne;

    iget-object v0, v0, Lfcd;->a:Lgdw;

    invoke-virtual {v0, v1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->g:Leax;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Leax;)V

    .line 74
    return-void
.end method
