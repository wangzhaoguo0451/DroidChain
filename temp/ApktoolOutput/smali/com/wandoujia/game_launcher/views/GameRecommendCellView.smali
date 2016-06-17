.class public Lcom/wandoujia/game_launcher/views/GameRecommendCellView;
.super Landroid/widget/RelativeLayout;
.source "GameRecommendCellView.java"


# instance fields
.field public a:Lcom/wandoujia/game_launcher/views/GameStoryView;

.field public b:Z

.field private c:Lcom/wandoujia/game_launcher/views/GameDailyTextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Z

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

.field private i:Ljava/lang/String;

.field private j:Z

.field private final k:Lcuh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->g:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->h:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->j:Z

    .line 43
    iput-boolean v1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->b:Z

    .line 142
    new-instance v0, Lcua;

    invoke-direct {v0, p0}, Lcua;-><init>(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->k:Lcuh;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->g:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->h:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->j:Z

    .line 43
    iput-boolean v1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->b:Z

    .line 142
    new-instance v0, Lcua;

    invoke-direct {v0, p0}, Lcua;-><init>(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->k:Lcuh;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->g:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->h:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->j:Z

    .line 43
    iput-boolean v1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->b:Z

    .line 142
    new-instance v0, Lcua;

    invoke-direct {v0, p0}, Lcua;-><init>(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->k:Lcuh;

    .line 55
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/game_launcher/views/GameRecommendCellView;
    .locals 1
    .parameter

    .prologue
    .line 58
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->game_launcher_recommend_cell:I

    invoke-static {p0, v0}, Lehx;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;Lcom/wandoujia/game_launcher/models/RecommendModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 29
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->setData(Lcom/wandoujia/game_launcher/models/RecommendModel;)V

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    iget-boolean v1, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->f:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->e:Lcom/nineoldandroids/animation/AnimatorSet;

    if-nez v1, :cond_0

    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->e:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->c:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, v3}, Ld;->a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcuc;

    invoke-direct {v2, v0}, Lcuc;-><init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->e:Lcom/nineoldandroids/animation/AnimatorSet;

    new-array v3, v5, [Lcom/nineoldandroids/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playSequentially([Lcom/nineoldandroids/animation/Animator;)V

    :cond_0
    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->e:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    iput-boolean v5, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->f:Z

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->k:Lcuh;

    invoke-virtual {v0, v1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->setReviewClickedListener(Lcuh;)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->j:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Lcom/wandoujia/game_launcher/views/GameStoryView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->d:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->b:Z

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Lcom/wandoujia/game_launcher/views/GameDailyTextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->c:Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->e:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->message_no_data:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->e:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->message_no_network:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static synthetic h(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->g:Z

    return v0
.end method

.method public static synthetic i(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->h:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->g:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    new-instance v0, Lctz;

    invoke-direct {v0, p0}, Lctz;-><init>(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V

    invoke-static {p1, v0}, Lcti;->a(Ljava/lang/String;Lctl;)V

    .line 128
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->j:Z

    .line 140
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 65
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->daily_title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->c:Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->game_story_card:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/views/GameStoryView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->c:Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    invoke-virtual {v0, v1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->setGameDailyTextView(Lcom/wandoujia/game_launcher/views/GameDailyTextView;)V

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->no_data_view:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->d:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->no_data_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->d:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->no_data_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->f:Landroid/view/View;

    new-instance v1, Lcty;

    invoke-direct {v1, p0}, Lcty;-><init>(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
