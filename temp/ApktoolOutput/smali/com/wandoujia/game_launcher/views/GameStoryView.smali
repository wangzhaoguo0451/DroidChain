.class public Lcom/wandoujia/game_launcher/views/GameStoryView;
.super Landroid/widget/FrameLayout;
.source "GameStoryView.java"


# instance fields
.field public a:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

.field public b:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

.field c:Landroid/widget/RelativeLayout;

.field public d:Lcom/wandoujia/game_launcher/models/RecommendModel;

.field e:Lcom/nineoldandroids/animation/AnimatorSet;

.field f:Z

.field private g:Landroid/view/View;

.field private h:Lcom/wandoujia/game_launcher/views/GameFooterView;

.field private i:Lcom/wandoujia/ripple_framework/view/LoadingView;

.field private j:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Landroid/support/v7/widget/LinearLayoutManager;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/wandoujia/game_launcher/views/GameDailyTextView;

.field private p:Lcui;

.field private q:Lcuh;

.field private r:Lctm;

.field private s:Lcom/nineoldandroids/animation/AnimatorSet;

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->f:Z

    .line 63
    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->t:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->f:Z

    .line 63
    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->t:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->f:Z

    .line 63
    iput-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->t:Z

    .line 75
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/ripple_framework/view/LoadingView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->i:Lcom/wandoujia/ripple_framework/view/LoadingView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/game_launcher/views/GameStoryView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->t:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/game_launcher/models/RecommendModel;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/game_launcher/views/GameDailyTextView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->o:Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/game_launcher/views/GameStoryView;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->t:Z

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/game_launcher/views/GameStoryView;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->l:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    return-void
.end method

.method public static synthetic f(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcuh;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->q:Lcuh;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->m:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method private getStoryHeadImage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getHeadImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getHeadImage()Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getStory()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getStory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/models/StoryParagraph;

    .line 108
    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getType()Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;->IMAGE:Lcom/wandoujia/game_launcher/models/StoryParagraph$ParagraphType;

    if-ne v2, v3, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/StoryParagraph;->getItem()Lcom/wandoujia/game_launcher/models/ParagraphContent;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/ParagraphContent;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/ImageModel;

    .line 112
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic h(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->j:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic k(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->l:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x258

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 151
    iget-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->f:Z

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->s:Lcom/nineoldandroids/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->s:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 154
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3, v2}, Ld;->a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 156
    new-instance v1, Lcud;

    invoke-direct {v1, p0}, Lcud;-><init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 166
    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->i:Lcom/wandoujia/ripple_framework/view/LoadingView;

    invoke-static {v1, v2, v3}, Ld;->a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->s:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playSequentially([Lcom/nineoldandroids/animation/Animator;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->s:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 170
    iput-boolean v4, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->f:Z

    .line 172
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 87
    iget-boolean v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->i:Lcom/wandoujia/ripple_framework/view/LoadingView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->a()V

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->i:Lcom/wandoujia/ripple_framework/view/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/LoadingView;->setVisibility(I)V

    .line 88
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 80
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->loading:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/LoadingView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->i:Lcom/wandoujia/ripple_framework/view/LoadingView;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_container:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->c:Landroid/widget/RelativeLayout;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_title_image:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->j:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_image_container:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->k:Landroid/widget/FrameLayout;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_content:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->l:Landroid/support/v7/widget/RecyclerView;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_more_arrow:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->n:Landroid/widget/ImageView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getContext()Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->m:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->m:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Luo;)V

    new-instance v0, Lcui;

    invoke-direct {v0, p0}, Lcui;-><init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->p:Lcui;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->p:Lcui;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Lup;)V

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->n:Landroid/widget/ImageView;

    new-instance v1, Lcue;

    invoke-direct {v1, p0}, Lcue;-><init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->game_launcher_header_view:I

    iget-object v2, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->c:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->g:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->app_info_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->a:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameFooterView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/game_launcher/views/GameFooterView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->h:Lcom/wandoujia/game_launcher/views/GameFooterView;

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->h:Lcom/wandoujia/game_launcher/views/GameFooterView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameFooterView;->getLeftPanel()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcuf;

    invoke-direct {v1, p0}, Lcuf;-><init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->h:Lcom/wandoujia/game_launcher/views/GameFooterView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameFooterView;->getRightPanel()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcug;

    invoke-direct {v1, p0}, Lcug;-><init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->h:Lcom/wandoujia/game_launcher/views/GameFooterView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->app_info_card:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/game_launcher/views/GameFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->b:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    .line 82
    return-void
.end method

.method public setData(Lcom/wandoujia/game_launcher/models/RecommendModel;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    if-ne v0, p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iput-object p1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    .line 190
    iput-boolean v4, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->t:Z

    .line 192
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->r:Lctm;

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Lctm;

    invoke-virtual {p0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getStory()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lctm;-><init>(Landroid/content/Context;Lcom/wandoujia/entities/game/GameLiteInfo;Ljava/util/List;)V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->r:Lctm;

    .line 195
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->r:Lctm;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lctm;->b(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->r:Lctm;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->h:Lcom/wandoujia/game_launcher/views/GameFooterView;

    invoke-virtual {v0, v1}, Lctm;->c(Landroid/view/View;)V

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->r:Lctm;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Luh;)V

    .line 203
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->a:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    const-string v1, "game_review"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->a(Ljava/lang/String;I)V

    .line 204
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->a:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->setAppInfo(Lcom/wandoujia/game_launcher/models/RecommendModel;)V

    .line 205
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->b:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    const-string v1, "game_review"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->a(Ljava/lang/String;I)V

    .line 206
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->b:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->setAppInfo(Lcom/wandoujia/game_launcher/models/RecommendModel;)V

    .line 207
    invoke-direct {p0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getStoryHeadImage()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 209
    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->j:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_delete_normal:I

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->a(Ljava/lang/String;I)V

    .line 214
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->h:Lcom/wandoujia/game_launcher/views/GameFooterView;

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ld;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ld;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameFooterView;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/wandoujia/game_launcher/views/GameFooterView;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->r:Lctm;

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getStory()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lctm;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lctm;->c()V

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->a()V

    goto :goto_1

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->j:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_delete_normal:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setImageResource(I)V

    goto :goto_2

    .line 214
    :cond_5
    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameFooterView;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/wandoujia/game_launcher/views/GameFooterView;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setGameDailyTextView(Lcom/wandoujia/game_launcher/views/GameDailyTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->o:Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    .line 92
    return-void
.end method

.method public setReviewClickedListener(Lcuh;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/wandoujia/game_launcher/views/GameStoryView;->q:Lcuh;

    .line 280
    return-void
.end method
