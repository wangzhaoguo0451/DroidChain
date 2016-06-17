.class public final Lecs;
.super Lup;
.source "GameStoryCardView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private synthetic e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 338
    iput-object p1, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-direct {p0}, Lup;-><init>()V

    .line 334
    iput v0, p0, Lecs;->a:I

    .line 335
    iput v0, p0, Lecs;->b:I

    .line 336
    iput v0, p0, Lecs;->c:I

    .line 337
    iput v0, p0, Lecs;->d:I

    .line 339
    const/high16 v0, 0x4316

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lg;->a(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lecs;->b:I

    .line 340
    const/high16 v0, 0x4296

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lg;->a(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lecs;->c:I

    .line 341
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$dimen;->quotation_max_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lecs;->d:I

    .line 342
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Lup;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 346
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 350
    invoke-super {p0, p1, p2, p3}, Lup;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 351
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->e(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v2, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lecs;->a:I

    .line 356
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 359
    iget v2, p0, Lecs;->a:I

    iget v4, p0, Lecs;->b:I

    if-lt v2, v4, :cond_2

    move v0, v1

    move v2, v3

    .line 367
    :goto_1
    iget-object v4, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v4}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setAlpha(F)V

    .line 368
    iget-object v2, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v2}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 369
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->f(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget v0, p0, Lecs;->a:I

    iget v2, p0, Lecs;->c:I

    if-lt v0, v2, :cond_3

    .line 378
    :goto_2
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 379
    const/high16 v0, 0x3f80

    cmpl-float v0, v3, v0

    if-nez v0, :cond_4

    .line 380
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 386
    :goto_3
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->h(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->quote_area:I

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 387
    if-eqz v2, :cond_0

    .line 388
    iget v0, p0, Lecs;->d:I

    .line 389
    iget v3, p0, Lecs;->a:I

    iget v4, p0, Lecs;->d:I

    if-le v3, v4, :cond_6

    .line 390
    iget v0, p0, Lecs;->a:I

    iget v3, p0, Lecs;->d:I

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 392
    iget v3, p0, Lecs;->d:I

    if-le v0, v3, :cond_5

    .line 398
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 363
    :cond_2
    iget v2, p0, Lecs;->b:I

    iget v4, p0, Lecs;->a:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lecs;->b:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 365
    iget v4, p0, Lecs;->a:I

    div-int/lit8 v4, v4, 0x3

    sub-int/2addr v0, v4

    goto/16 :goto_1

    .line 375
    :cond_3
    iget v0, p0, Lecs;->c:I

    iget v2, p0, Lecs;->a:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lecs;->c:I

    int-to-float v2, v2

    div-float v3, v0, v2

    goto :goto_2

    .line 383
    :cond_4
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lecs;->e:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->g(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_3

    .line 395
    :cond_5
    iget v1, p0, Lecs;->d:I

    sub-int/2addr v1, v0

    goto :goto_4

    :cond_6
    move v1, v0

    goto :goto_4
.end method
