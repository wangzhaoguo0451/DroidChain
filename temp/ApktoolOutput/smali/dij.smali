.class public final Ldij;
.super Lcom/nineoldandroids/animation/ValueAnimator;
.source "LibFragment.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

.field private final b:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Ldij;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 415
    iput-object p2, p0, Ldij;->b:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    .line 416
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Ldij;->setFloatValues([F)V

    .line 417
    new-instance v0, Ldik;

    invoke-direct {v0, p0, p2}, Ldik;-><init>(Ldij;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V

    invoke-virtual {p0, v0}, Ldij;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 435
    new-instance v0, Ldil;

    invoke-direct {v0, p0, p2}, Ldil;-><init>(Ldij;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V

    invoke-virtual {p0, v0}, Ldij;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 454
    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-direct {p0, p1, p2}, Ldij;-><init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V

    return-void
.end method

.method static synthetic a(Ldij;)I
    .locals 1
    .parameter

    .prologue
    .line 408
    iget v0, p0, Ldij;->c:I

    return v0
.end method

.method static synthetic b(Ldij;)I
    .locals 1
    .parameter

    .prologue
    .line 408
    iget v0, p0, Ldij;->d:I

    return v0
.end method


# virtual methods
.method public final start()V
    .locals 3

    .prologue
    .line 458
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Ldij;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->g(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Ldij;->c:I

    .line 460
    iget-object v0, p0, Ldij;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->h(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getIndicatorColor()I

    move-result v0

    iput v0, p0, Ldij;->d:I

    .line 461
    iget-object v0, p0, Ldij;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->f(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)Ljava/util/List;

    move-result-object v0

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

    .line 462
    iget-object v2, v0, Lhbe;->e:Lhow;

    instance-of v2, v2, Lcom/wandoujia/jupiter/library/view/TransitionTab;

    if-eqz v2, :cond_0

    .line 463
    iget-object v0, v0, Lhbe;->e:Lhow;

    check-cast v0, Lcom/wandoujia/jupiter/library/view/TransitionTab;

    iget-object v2, p0, Ldij;->b:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-interface {v0, v2}, Lcom/wandoujia/jupiter/library/view/TransitionTab;->a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-super {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 468
    return-void
.end method
