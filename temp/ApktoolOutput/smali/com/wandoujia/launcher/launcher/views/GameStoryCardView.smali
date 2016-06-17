.class public Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;
.super Landroid/widget/FrameLayout;
.source "GameStoryCardView.java"


# instance fields
.field public a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

.field public b:Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

.field public c:Lcom/nineoldandroids/animation/AnimatorSet;

.field public d:Lcom/nineoldandroids/animation/AnimatorSet;

.field public e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

.field private i:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

.field private j:Landroid/support/v7/widget/LinearLayoutManager;

.field private k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

.field private l:Lecs;

.field private m:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Ldxs;

.field private p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

.field private q:Lecr;

.field private final r:Ldby;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Ldby;

    invoke-direct {v0, p0}, Ldby;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->r:Ldby;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Ldby;

    invoke-direct {v0, p0}, Ldby;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->r:Ldby;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Ldby;

    invoke-direct {v0, p0}, Ldby;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->r:Ldby;

    .line 95
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->a(II)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-static {}, Ledw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ledm;

    invoke-direct {v0, p0}, Ledm;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    invoke-static {p1, v0}, Ledj;->a(Landroid/graphics/Bitmap;Ledm;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lecr;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->q:Lecr;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b:Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/LoadingView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->j:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->m:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getStoryHeadImage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getHeadImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getHeadImage()Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getStory()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getStory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/StoryParagraph;

    .line 252
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/StoryParagraph;->getType()Lcom/wandoujia/launcher/launcher/models/StoryParagraph$ParagraphType;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/launcher/launcher/models/StoryParagraph$ParagraphType;->IMAGE:Lcom/wandoujia/launcher/launcher/models/StoryParagraph$ParagraphType;

    if-ne v2, v3, :cond_1

    .line 253
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/StoryParagraph;->getItem()Lcom/wandoujia/launcher/launcher/models/ParagraphContent;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent;->getImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 255
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/ImageModel;

    .line 256
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/ImageModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic h(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    return-object v0
.end method


# virtual methods
.method public getCurrentGameLiteInfo()Lcom/wandoujia/entities/game/GameLiteInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 108
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b:Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    invoke-static {v2, v6, v5}, Ld;->a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

    invoke-static {v3, v5, v6}, Ld;->a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    iput-boolean v4, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->e:Z

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

    sget-object v1, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->ROTATE:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->setAnimType(Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->setLoadingMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

    invoke-virtual {v0, v4}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->setVisibility(I)V

    .line 109
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->end()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->end()V

    .line 120
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 101
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->loading:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/LoadingView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_container:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b:Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_title_image:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->m:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_content:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->story_more_arrow:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->n:Landroid/widget/ImageView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getContext()Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->j:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b:Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$color;->app_detail_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;->setBackgroundMaskColor(I)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->j:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->setLayoutManager(Luo;)V

    new-instance v0, Lecs;

    invoke-direct {v0, p0}, Lecs;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->l:Lecs;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->l:Lecs;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->setOnScrollListener(Lup;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->n:Landroid/widget/ImageView;

    new-instance v1, Lecn;

    invoke-direct {v1, p0}, Lecn;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->header_view_story:I

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b:Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->app_info_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->h:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->footer_view_story:I

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->app_info_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->i:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->review_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leco;

    invoke-direct {v1, p0}, Leco;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->h:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->getActionButton()Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    move-result-object v0

    const-string v1, "game_review"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v3, "download_game_above"

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->i:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->getActionButton()Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    move-result-object v0

    const-string v1, "game_review"

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v3, "download_game_below"

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setData(Lcom/wandoujia/launcher/launcher/models/RecommendModel;)V
    .locals 4
    .parameter

    .prologue
    .line 213
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    if-ne v0, p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->p:Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    .line 218
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->o:Ldxs;

    if-nez v0, :cond_2

    .line 219
    new-instance v0, Ldxs;

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getStory()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ldxs;-><init>(Landroid/content/Context;Lcom/wandoujia/entities/game/GameLiteInfo;Ljava/util/List;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->o:Ldxs;

    .line 221
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->o:Ldxs;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Ldxs;->b(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->o:Ldxs;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Ldxs;->c(Landroid/view/View;)V

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->setHeaderView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->m:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->setHeaderImageView(Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;)V

    .line 229
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->o:Ldxs;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->setAdapter(Luh;)V

    .line 230
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->h:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->r:Ldby;

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->a(Lcom/wandoujia/launcher/launcher/models/RecommendModel;Ldby;)V

    .line 231
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->i:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->r:Ldby;

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->a(Lcom/wandoujia/launcher/launcher/models/RecommendModel;Ldby;)V

    .line 232
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getStoryHeadImage()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->m:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_delete_normal:I

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->a(Ljava/lang/String;I)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->h:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->getActionButton()Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/entities/game/GameLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    .line 241
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->i:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->getActionButton()Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/entities/game/GameLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    goto/16 :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->o:Ldxs;

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->getStory()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ldxs;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ldxs;->c()V

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->k:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->a()V

    goto :goto_1

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->m:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_delete_normal:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public setLoadingMessage(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->setLoadingMessage(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public setReviewClickedListener(Lecr;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->q:Lecr;

    .line 327
    return-void
.end method
