.class public Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "EssentialGameFragment.java"


# instance fields
.field private d:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field private e:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field private q:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field private r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 50
    const-string v0, "wdj://welcome/games"

    const-string v1, "http://apis.wandoujia.com/five/v1/nux/essentials/games?max=50"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    iget-object v0, v0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->n:Leqw;

    invoke-virtual {v1}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    if-nez p0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    .line 137
    invoke-static {v1}, Ld;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :cond_3
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 202
    if-nez p0, :cond_0

    .line 212
    :goto_0
    return v0

    .line 207
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 208
    invoke-static {v0}, Ld;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 211
    goto :goto_1

    :cond_1
    move v0, v1

    .line 212
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->n:Leqw;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    iget-object v0, v0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->b(Ljava/util/List;)I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->n:Leqw;

    invoke-virtual {v1}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->b(Ljava/util/List;)I

    move-result v1

    .line 189
    if-nez v0, :cond_1

    .line 190
    if-nez v1, :cond_0

    const-string v0, ""

    .line 198
    :goto_0
    return-object v0

    .line 190
    :cond_0
    const v0, 0x7f0e02c0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    if-nez v1, :cond_2

    .line 194
    const v1, 0x7f0e02ba

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_2
    const v2, 0x7f0e02bd

    invoke-virtual {p0, v2}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 3
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
    .line 60
    new-instance v0, Lhhq;

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhhq;-><init>(Ljava/lang/String;Leqx;)V

    .line 61
    const/4 v1, 0x6

    invoke-static {v1}, Ld;->e(I)Leqx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhhq;->a(Leqx;)V

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhhv;->h:Z

    .line 63
    return-object v0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 6
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
    const-wide/16 v4, 0x0

    const/high16 v2, 0x3f80

    .line 171
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 173
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->q:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->q:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->d:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->e:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->q:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->s:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->d:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->e:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->q:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V

    .line 181
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->n:Leqw;

    invoke-static {v0, v1, p2}, Ldxa;->a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 182
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 156
    const v0, 0x7f030145

    return v0
.end method

.method protected final d_()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    return-object v0
.end method

.method protected final e()Lhaw;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Ldkk;

    invoke-direct {v0}, Ldkk;-><init>()V

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ldkk;

    invoke-direct {v0}, Ldkk;-><init>()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDestroy()V

    .line 150
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public onEventMainThread(Lddv;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->q:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    iget-object v0, v0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->b(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->b(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e02bf

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e02be

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEnabled(Z)V

    .line 71
    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->d:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 72
    const v0, 0x7f0c0367

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->e:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 73
    const v0, 0x7f0c0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 74
    const v0, 0x7f0c01ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->q:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 75
    const v0, 0x7f0c0369

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->s:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->d:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e02c2

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->e:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e02c1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e02be

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    new-instance v1, Ldkl;

    invoke-direct {v1, p0}, Ldkl;-><init>(Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->s:Landroid/view/View;

    new-instance v1, Ldkm;

    invoke-direct {v1, p0}, Ldkm;-><init>(Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 117
    return-void
.end method
