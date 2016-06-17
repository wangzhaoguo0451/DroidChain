.class public Lcom/wandoujia/launcher/launcher/views/GameExpandableView;
.super Landroid/widget/LinearLayout;
.source "GameExpandableView.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Z

.field private f:Ldd;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->e:Z

    .line 40
    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->g:Z

    .line 48
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->e:Z

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    .line 31
    new-instance v0, Ldxx;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_folder_bottom_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ldxx;-><init>(Landroid/view/View;JII)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v5, 0x3e99999a

    const/high16 v6, 0x3f80

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lecl;

    invoke-direct {v1, p0}, Lecl;-><init>(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 31
    new-instance v0, Ldxx;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    const-wide/16 v2, 0x64

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_folder_bottom_height:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct/range {v0 .. v5}, Ldxx;-><init>(Landroid/view/View;JII)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const v3, 0x3e99999a

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lecm;

    invoke-direct {v1, p0}, Lecm;-><init>(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Lcom/wandoujia/launcher/view/ExpandablePanelIcon;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b:Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Ldd;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->f:Ldd;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->g:Z

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v3, "game_launcher_home"

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v6, "show_game_suggestion"

    invoke-static {v3, v4, v5, v6}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->g:Z

    .line 61
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b:Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->b()V

    .line 124
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->collapse_value:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->c:Landroid/view/View;

    .line 68
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->expand_layout:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 70
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->expand_icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b:Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

    .line 71
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->update_icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->d:Landroid/widget/ImageView;

    .line 72
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folder_suggestion_updated"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :cond_0
    invoke-static {}, Lg;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b:Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->a()V

    .line 83
    :goto_0
    invoke-static {}, Lg;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->e:Z

    .line 84
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->c:Landroid/view/View;

    new-instance v1, Leck;

    invoke-direct {v1, p0}, Leck;-><init>(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->b:Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->b()V

    goto :goto_0
.end method

.method public setExpandStateChangeListener$7f33d4ff(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->f:Ldd;

    .line 144
    return-void
.end method
