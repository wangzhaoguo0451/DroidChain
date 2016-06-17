.class public Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;
.super Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;
.source "DailyRecommendFragment.java"


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/String;

.field private final k:Lecr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->h:Ljava/util/List;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->i:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->j:Ljava/lang/String;

    .line 142
    new-instance v0, Ldzq;

    invoke-direct {v0, p0}, Ldzq;-><init>(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->k:Lecr;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;Lcom/wandoujia/launcher/launcher/models/RecommendModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 35
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->daily_recommend:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->setData(Lcom/wandoujia/launcher/launcher/models/RecommendModel;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    iget-boolean v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->e:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    if-nez v1, :cond_0

    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b:Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, v3}, Ld;->a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lecp;

    invoke-direct {v2, v0}, Lecp;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    new-array v3, v5, [Lcom/nineoldandroids/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playSequentially([Lcom/nineoldandroids/animation/Animator;)V

    :cond_0
    iget-object v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    iput-boolean v5, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->e:Z

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->k:Lecr;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->setReviewClickedListener(Lecr;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "game/game_launcher_review/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->q(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    new-instance v0, Ldzp;

    invoke-direct {v0, p0}, Ldzp;-><init>(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V

    invoke-static {p1, v0}, Ldyu;->a(Ljava/lang/String;Lctl;)V

    .line 140
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->d:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->message_no_data:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->d:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->message_no_network:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->i:Z

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->h:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->i:Z

    return v0
.end method

.method public static synthetic g(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/wandoujia/launcher/launcher/fragments/BaseAnimationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a()V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->fragment_daily_recommend:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b:Landroid/view/View;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->daily_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/wandoujia/game_launcher/lib/R$string;->daily_recommend:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ld;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->game_story_card:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->g:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->no_data_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->c:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->no_data_message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->c:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->no_data_refresh:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->f:Landroid/view/View;

    new-instance v2, Ldzn;

    invoke-direct {v2, p0}, Ldzn;-><init>(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b:Landroid/view/View;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->container_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ldzo;

    invoke-direct {v2, p0}, Ldzo;-><init>(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "game/game_launcher_review"

    invoke-static {v1, v0}, Ld;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b:Landroid/view/View;

    return-object v0
.end method
