.class public Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "DetailPagerFragment.java"

# interfaces
.implements Lhea;


# instance fields
.field public a:Lhay;

.field public b:Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

.field public c:Landroid/view/View;

.field public d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

.field private e:Lcom/wandoujia/logv3/toolkit/LogViewPager;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 111
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->finish()V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/toolkit/LogViewPager;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->e:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->e:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    new-instance v1, Lhjx;

    invoke-direct {v1, p0}, Lhjx;-><init>(Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->setOnPageChangeListener(Lhw;)V

    new-instance v0, Lhay;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->getChildFragmentManager()Ls;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lhay;-><init>(Lhea;Ls;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->a:Lhay;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->e:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->a:Lhay;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->setAdapter(Lgf;)V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget v1, v1, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->a:Lhay;

    iput-object v1, v0, Lhay;->b:Ljava/util/List;

    iget-object v0, v0, Lgf;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->a:Lhay;

    iget-object v0, v0, Lgf;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    sget-object v2, Lhjy;->a:[I

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 175
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    const-string v2, "position"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    return-object v0

    .line 174
    :pswitch_0
    new-instance v0, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/ripple/fragment/FeedDetailFragment;-><init>()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 2
    .parameter

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    invoke-virtual {v1}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    goto :goto_0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->b:Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->b:Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

    iget v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a(I)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->background:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->f:Landroid/view/View;

    .line 53
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->foreground:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->c:Landroid/view/View;

    .line 54
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->swipe:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->b:Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

    .line 55
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->b:Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->setBackgroundView(Landroid/view/View;)V

    .line 56
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x2

    const/high16 v10, 0x3f80

    const-wide/16 v8, 0x12c

    const/4 v7, 0x1

    .line 61
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lhhw;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Lhhw;Landroid/os/Bundle;)Lcom/wandoujia/ripple_framework/model/DetailInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    .line 65
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->finish()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->b:Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

    new-instance v1, Lhnh;

    invoke-direct {v1, p0}, Lhnh;-><init>(Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->setOnAnimListener(Lhnh;)V

    .line 96
    sget-object v1, Lhjy;->a:[I

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget v2, v2, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 110
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->b:Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

    iget-boolean v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    if-nez v1, :cond_0

    iput-boolean v7, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b()V

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Lgs;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$anim;->fragment_slide_in_bottom:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lhnb;

    invoke-direct {v2, v0}, Lhnb;-><init>(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 98
    :pswitch_0
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$dimen;->feed_detail_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->windowTranslucentStatus:Z

    if-eqz v1, :cond_2

    .line 102
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$dimen;->toolbar_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->c:Landroid/view/View;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 107
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->b:Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->d:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a:Lcom/wandoujia/ripple_framework/view/Anchor;

    iget-boolean v2, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    if-nez v2, :cond_0

    iput-boolean v7, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->e:Z

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b()V

    if-eqz v1, :cond_4

    invoke-static {v12}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    iget v3, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    int-to-float v3, v3

    iget v4, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    iget v5, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_3
    iget-object v2, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    iget v3, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    int-to-float v3, v3

    iget v4, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lgs;->e(Landroid/view/View;F)V

    const-string v2, "DetailIn"

    const-string v3, "top %d, height %d, container height %d. \npivotY %f, scaleY %f"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v1, v1, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v11

    const/4 v1, 0x3

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    invoke-static {v5}, Lgs;->s(Landroid/view/View;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    invoke-static {v5}, Lgs;->t(Landroid/view/View;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    invoke-static {v1}, Lgs;->u(Landroid/view/View;)F

    move-result v1

    iput v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->d:F

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    invoke-static {v1}, Lgs;->r(Landroid/view/View;)V

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-static {v12}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    invoke-static {v1, v10}, Lgs;->c(Landroid/view/View;F)V

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->c:Landroid/view/View;

    const/high16 v2, 0x3f00

    invoke-static {v1, v2}, Lgs;->e(Landroid/view/View;F)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgs;->c(Landroid/view/View;F)V

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->b:Landroid/view/View;

    invoke-static {v1}, Lgs;->q(Landroid/view/View;)Lig;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lig;->a(Landroid/view/animation/Interpolator;)Lig;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lig;->a(J)Lig;

    move-result-object v1

    invoke-virtual {v1, v10}, Lig;->a(F)Lig;

    move-result-object v1

    new-instance v2, Lhnd;

    invoke-direct {v2, v0}, Lhnd;-><init>(Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;)V

    invoke-virtual {v1, v2}, Lig;->a(Lis;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->c()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/RippleSwipeBackContainer;->a()V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
