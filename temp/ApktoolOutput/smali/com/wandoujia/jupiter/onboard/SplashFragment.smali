.class public Lcom/wandoujia/jupiter/onboard/SplashFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "SplashFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Ldkp;

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

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->i:Z

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "page_intent_uri"

    const-string v2, "wdj://welcome/hello"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "page_api_url"

    const-string v2, "http://apis.wandoujia.com/five/v1/nux/essentials/apps?max=50"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/onboard/SplashFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->g:Leqw;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->f:Ldkp;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->f:Ldkp;

    invoke-interface {v0}, Ldkp;->a()V

    goto :goto_0

    .line 206
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->i:Z

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldks;

    invoke-direct {v1, p0}, Ldks;-><init>(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->a()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    :try_start_0
    move-object v0, p1

    check-cast v0, Ldkp;

    move-object v1, v0

    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->f:Ldkp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 74
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->h:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const v0, 0x7f030172

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDetach()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->f:Ldkp;

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onResume()V

    .line 120
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->f:Ldkp;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->f:Ldkp;

    invoke-interface {v0}, Ldkp;->a()V

    .line 123
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x2ee

    const-wide/16 v6, 0x258

    const/4 v0, 0x0

    const/high16 v4, 0x3f80

    .line 87
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f0c0374

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->a:Landroid/view/View;

    .line 89
    const v1, 0x7f0c0375

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->b:Landroid/view/View;

    .line 90
    const v1, 0x7f0c0368

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->c:Landroid/view/View;

    .line 91
    const v1, 0x7f0c0078

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->d:Landroid/view/View;

    .line 92
    const v1, 0x7f0c0367

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->e:Landroid/view/View;

    .line 94
    new-instance v1, Lhhq;

    iget-object v2, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lhhq;-><init>(Ljava/lang/String;Leqx;)V

    invoke-static {}, Ld;->p()Leqx;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhhq;->a(Leqx;)V

    iput-boolean v0, v1, Lhhv;->h:Z

    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->g:Leqw;

    .line 95
    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->g:Leqw;

    new-instance v2, Ldkq;

    invoke-direct {v2, p0}, Ldkq;-><init>(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V

    invoke-virtual {v1, v2}, Leqw;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 111
    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->g:Leqw;

    invoke-virtual {v1}, Leqw;->g()V

    .line 114
    sget-boolean v1, Lcom/wandoujia/jupiter/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x5dc

    :cond_0
    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->a:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->scaleX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->scaleY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->b:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->scaleX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->scaleY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->c:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->scaleX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->scaleY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/SplashFragment;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldkr;

    invoke-direct {v1, p0}, Ldkr;-><init>(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 115
    return-void
.end method
