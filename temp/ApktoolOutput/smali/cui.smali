.class public final Lcui;
.super Lup;
.source "GameStoryView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private synthetic g:Lcom/wandoujia/game_launcher/views/GameStoryView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 294
    iput-object p1, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-direct {p0}, Lup;-><init>()V

    .line 288
    iput v0, p0, Lcui;->a:I

    .line 289
    iput v0, p0, Lcui;->b:I

    .line 290
    iput v0, p0, Lcui;->c:I

    .line 291
    iput v0, p0, Lcui;->d:I

    .line 292
    iput v0, p0, Lcui;->e:I

    .line 293
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_launcher_split_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcui;->f:I

    .line 295
    const/high16 v0, 0x4316

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lg;->a(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcui;->b:I

    .line 296
    const/high16 v0, 0x4296

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lg;->a(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcui;->c:I

    .line 297
    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$dimen;->quotation_max_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_launcher_split_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcui;->d:I

    .line 299
    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$dimen;->quotation_start_move:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcui;->e:I

    .line 300
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lup;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 304
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 308
    invoke-super {p0, p1, p2, p3}, Lup;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 309
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->g(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcui;->a:I

    .line 314
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->h(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 317
    iget v2, p0, Lcui;->a:I

    iget v4, p0, Lcui;->b:I

    if-lt v2, v4, :cond_4

    move v0, v1

    move v2, v3

    .line 325
    :goto_1
    iget-object v4, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v4}, Lcom/wandoujia/game_launcher/views/GameStoryView;->i(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 326
    iget-object v2, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v2}, Lcom/wandoujia/game_launcher/views/GameStoryView;->h(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 327
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 328
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->h(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget v0, p0, Lcui;->a:I

    iget v2, p0, Lcui;->c:I

    if-lt v0, v2, :cond_5

    .line 336
    :goto_2
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->j(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 337
    const/high16 v0, 0x3f80

    cmpl-float v0, v3, v0

    if-nez v0, :cond_6

    .line 338
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->j(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->j(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 344
    :goto_3
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->k(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->quote_area:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 346
    iget v2, p0, Lcui;->a:I

    iget v3, p0, Lcui;->e:I

    if-lt v2, v3, :cond_7

    .line 347
    iget-object v1, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->d(Lcom/wandoujia/game_launcher/views/GameStoryView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 348
    iget-object v1, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->c(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->b()V

    .line 349
    iget-object v1, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v1, v5}, Lcom/wandoujia/game_launcher/views/GameStoryView;->a(Lcom/wandoujia/game_launcher/views/GameStoryView;Z)Z

    .line 356
    :cond_2
    :goto_4
    if-eqz v0, :cond_0

    .line 357
    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->game_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 358
    iget v0, p0, Lcui;->d:I

    .line 360
    iget v2, p0, Lcui;->a:I

    iget v3, p0, Lcui;->e:I

    if-lt v2, v3, :cond_3

    .line 361
    iget v0, p0, Lcui;->d:I

    iget v2, p0, Lcui;->a:I

    iget v3, p0, Lcui;->e:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    .line 363
    iget v2, p0, Lcui;->f:I

    if-ge v0, v2, :cond_3

    .line 364
    iget v0, p0, Lcui;->f:I

    .line 367
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 321
    :cond_4
    iget v2, p0, Lcui;->b:I

    iget v4, p0, Lcui;->a:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcui;->b:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 323
    iget v4, p0, Lcui;->a:I

    div-int/lit8 v4, v4, 0x3

    sub-int/2addr v0, v4

    goto/16 :goto_1

    .line 333
    :cond_5
    iget v0, p0, Lcui;->c:I

    iget v2, p0, Lcui;->a:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcui;->c:I

    int-to-float v2, v2

    div-float v3, v0, v2

    goto/16 :goto_2

    .line 341
    :cond_6
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->j(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->j(Lcom/wandoujia/game_launcher/views/GameStoryView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_3

    .line 351
    :cond_7
    iget-object v2, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v2}, Lcom/wandoujia/game_launcher/views/GameStoryView;->d(Lcom/wandoujia/game_launcher/views/GameStoryView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    iget-object v2, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v2}, Lcom/wandoujia/game_launcher/views/GameStoryView;->c(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->a()V

    .line 353
    iget-object v2, p0, Lcui;->g:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v2, v1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->a(Lcom/wandoujia/game_launcher/views/GameStoryView;Z)Z

    goto :goto_4
.end method
