.class public Lcom/wandoujia/jupiter/library/fragment/LibFragment;
.super Lcom/wandoujia/ripple_framework/fragment/TabFragment;
.source "LibFragment.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Lcom/wandoujia/p4/views/ScrollDownLayout;

.field private j:Ldii;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhbe;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/nineoldandroids/animation/ValueAnimator;

.field private m:Lcom/nineoldandroids/animation/ValueAnimator;

.field private n:Lhw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->k:Ljava/util/List;

    .line 69
    new-instance v0, Ldie;

    invoke-direct {v0, p0}, Ldie;-><init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->n:Lhw;

    .line 408
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b()V

    .line 210
    :cond_0
    const v0, 0x7f0e03c7

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    #calls: Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->newTabs()Ljava/util/List;
    invoke-static {}, Lcom/wandoujia/jupiter/library/fragment/LibFragment$TabData;->access$400()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->k:Ljava/util/List;

    .line 212
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->k:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbe;

    iget-object v2, v0, Lhbe;->e:Lhow;

    instance-of v2, v2, Ldjn;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lhbe;->e:Lhow;

    check-cast v0, Ldjn;

    invoke-interface {v0}, Ldjn;->a()V

    goto :goto_0

    .line 214
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->l:Lcom/nineoldandroids/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->m:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->m:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->m:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->m:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v0, Ldij;

    sget-object v1, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->DARK:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ldij;-><init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;B)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->l:Lcom/nineoldandroids/animation/ValueAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->l:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbe;

    .line 250
    iget-object v2, v0, Lhbe;->e:Lhow;

    instance-of v2, v2, Ldjn;

    if-eqz v2, :cond_0

    .line 251
    iget-object v0, v0, Lhbe;->e:Lhow;

    check-cast v0, Ldjn;

    invoke-interface {v0}, Ldjn;->b()V

    goto :goto_0

    .line 254
    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->m:Lcom/nineoldandroids/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->l:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->l:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->l:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->l:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v0, Ldij;

    sget-object v1, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->LIGHT:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ldij;-><init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;B)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->m:Lcom/nineoldandroids/animation/ValueAnimator;

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->m:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->f()V

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->k:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->getView()Landroid/view/View;

    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->a()V

    .line 405
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->c()V

    .line 406
    return-void
.end method

.method public static synthetic g(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->d:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    return-object v0
.end method


# virtual methods
.method protected final c()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f03018a

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->j:Ldii;

    invoke-virtual {v0, v1}, Lcmm;->b(Lcom/wandoujia/account/listener/IAccountListener;)V

    .line 226
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 228
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->onDestroy()V

    .line 229
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->onDestroyView()V

    .line 219
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b()V

    .line 220
    return-void
.end method

.method public onEventMainThread(Lhaq;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    sget-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DROP_ALL_SUBSCRIPTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    iget-object v1, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->f()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    sget-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    iget-object v1, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->b()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->a()V

    .line 110
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->navigateTo(Ljava/lang/String;)Z

    .line 115
    :cond_0
    const v0, 0x7f0c007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    new-instance v0, Ldii;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldii;-><init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->j:Ldii;

    .line 117
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->j:Ldii;

    invoke-virtual {v0, v1}, Lcmm;->a(Lcom/wandoujia/account/listener/IAccountListener;)V

    .line 120
    const v0, 0x7f0c0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->a:Landroid/view/View;

    .line 121
    const v0, 0x7f0c0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b:Landroid/view/View;

    .line 122
    const v0, 0x7f0c0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ScrollDownLayout;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    .line 123
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->n:Lhw;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Lhw;)V

    .line 124
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Ldif;

    invoke-direct {v1, p0}, Ldif;-><init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 142
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 146
    :cond_1
    new-instance v0, Ldig;

    invoke-direct {v0, p0}, Ldig;-><init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    .line 167
    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setOnScrollChangedListener(Lgqi;)V

    .line 168
    return-void
.end method
