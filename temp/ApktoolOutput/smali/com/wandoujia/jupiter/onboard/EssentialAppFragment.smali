.class public Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "EssentialAppFragment.java"


# instance fields
.field private d:Ldkp;

.field private e:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field private s:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field private t:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 56
    const-string v0, "wdj://welcome/apps"

    const-string v1, "http://apis.wandoujia.com/five/v1/nux/essentials/apps?max=50"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Ldkp;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d:Ldkp;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d:Ldkp;

    invoke-interface {v0}, Ldkp;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldkj;

    invoke-direct {v1, p0}, Ldkj;-><init>(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->n:Leqw;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d:Ldkp;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d:Ldkp;

    invoke-interface {v0}, Ldkp;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v0, v4}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->b(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/EssentialGameFragment;->b(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->s:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e02bf

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    goto :goto_0

    .line 279
    :cond_1
    const v2, 0x7f0e02ba

    invoke-virtual {p0, v2}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->s:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e02be

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->s:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e02b9

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setVisibility(I)V

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
    .line 78
    new-instance v0, Lhhq;

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhhq;-><init>(Ljava/lang/String;Leqx;)V

    .line 79
    const/16 v1, 0x9

    invoke-static {v1}, Ld;->e(I)Leqx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhhq;->a(Leqx;)V

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhhv;->h:Z

    .line 81
    return-object v0
.end method

.method protected final a()Lum;
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a()Lum;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 8
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
    const-wide/16 v6, 0x7d0

    const-wide/16 v4, 0x258

    const/high16 v2, 0x3f80

    .line 207
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 209
    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->p()V

    .line 211
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->q:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->s:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->t:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d:Ldkp;

    invoke-interface {v0}, Ldkp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V

    .line 221
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->n:Leqw;

    invoke-static {v0, v1, p2}, Ldxa;->a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 222
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f030145

    return v0
.end method

.method protected final d_()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    return-object v0
.end method

.method protected final e()Lhaw;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Ldkg;

    invoke-direct {v0}, Ldkg;-><init>()V

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ldkg;

    invoke-direct {v0}, Ldkg;-><init>()V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    :try_start_0
    move-object v0, p1

    check-cast v0, Ldkp;

    move-object v1, v0

    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d:Ldkp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 65
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnFragmentInteractionListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDestroy()V

    .line 180
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDetach()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->d:Ldkp;

    .line 74
    return-void
.end method

.method public onEventMainThread(Lddv;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->p()V

    .line 305
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEnabled(Z)V

    .line 89
    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->e:Landroid/view/View;

    .line 90
    const v0, 0x7f0c0367

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->q:Landroid/view/View;

    .line 91
    const v0, 0x7f0c0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->s:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 92
    const v0, 0x7f0c0369

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->t:Landroid/view/View;

    .line 93
    const v0, 0x7f0c01ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->r:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 95
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->s:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    new-instance v1, Ldkh;

    invoke-direct {v1, p0}, Ldkh;-><init>(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;->t:Landroid/view/View;

    new-instance v1, Ldki;

    invoke-direct {v1, p0}, Ldki;-><init>(Lcom/wandoujia/jupiter/onboard/EssentialAppFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 171
    return-void
.end method
