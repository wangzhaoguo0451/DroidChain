.class public Lcom/wandoujia/ripple_framework/view/Spinner;
.super Landroid/widget/LinearLayout;
.source "Spinner.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/view/View;

.field private g:Lhns;

.field private h:Lhnr;

.field private i:Lhnu;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 201
    const-string v0, "spinner"

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->k:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    const-string v0, "spinner"

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->k:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    const-string v0, "spinner"

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->k:Ljava/lang/String;

    .line 213
    return-void
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->g:Lhns;

    invoke-virtual {v0, p1}, Lhns;->a(I)Lhnt;

    move-result-object v6

    .line 363
    if-nez v6, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->f:Landroid/view/View;

    if-eq v0, p2, :cond_2

    move v5, v4

    .line 367
    :goto_1
    if-eqz v5, :cond_5

    move v1, v2

    .line 368
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 369
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 370
    if-ne v0, p2, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 368
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v5, v2

    .line 366
    goto :goto_1

    :cond_3
    move v3, v2

    .line 370
    goto :goto_3

    .line 372
    :cond_4
    iput-object p2, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->f:Landroid/view/View;

    .line 374
    :cond_5
    if-eqz v5, :cond_7

    .line 375
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->i:Lhnu;

    if-nez v0, :cond_6

    .line 376
    new-instance v0, Lhnu;

    invoke-direct {v0}, Lhnu;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->i:Lhnu;

    .line 378
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v6, v0}, Lcom/wandoujia/ripple_framework/view/Spinner;->a(Lhnt;Landroid/widget/TextView;)V

    .line 380
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->h:Lhnr;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->h:Lhnr;

    invoke-interface {v0, p2, p1, p3}, Lhnr;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 378
    :cond_8
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/Spinner;ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/ripple_framework/view/Spinner;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic a(Lhnt;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-interface {p0}, Lhnt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lhnt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/Spinner;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->c:Z

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 291
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    .line 293
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 294
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lhnn;

    invoke-direct {v1, p0}, Lhnn;-><init>(Lcom/wandoujia/ripple_framework/view/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ld;->w(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    .line 304
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$color;->black_60_transparency:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 306
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    sget v1, Lcom/wandoujia/ripple_framework/R$style;->SpinnerAnim:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 308
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    new-instance v1, Lhno;

    invoke-direct {v1, p0}, Lhno;-><init>(Lcom/wandoujia/ripple_framework/view/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 316
    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/view/Spinner;)V
    .locals 4
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->rotation(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->c:Z

    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->b()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->findCurrentFragment()Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getPageUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getPageUri()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/view/Spinner;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/ripple_framework/view/Spinner;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->c:Z

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/ripple_framework/view/Spinner;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43b4

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->rotation(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic f(Lcom/wandoujia/ripple_framework/view/Spinner;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->j:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->c:Z

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->c:Z

    .line 261
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->b()V

    .line 262
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/ripple_framework/view/Spinner;->a(ILandroid/view/View;Z)V

    .line 349
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdapter()Lhns;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->g:Lhns;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 218
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/Spinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->a:Landroid/view/View;

    .line 219
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/Spinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->b:Landroid/view/View;

    .line 220
    new-instance v0, Lhnm;

    invoke-direct {v0, p0}, Lhnm;-><init>(Lcom/wandoujia/ripple_framework/view/Spinner;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/Spinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-void
.end method

.method public setAdapter(Lhns;)V
    .locals 3
    .parameter

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/Spinner;->b()V

    .line 320
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->g:Lhns;

    .line 321
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->j:Ljava/util/List;

    .line 323
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lhns;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 324
    invoke-virtual {p1, v0}, Lhns;->a(I)Lhnt;

    .line 325
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Lhns;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_0

    .line 329
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1, v2}, Lhns;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 333
    new-instance v2, Lhnp;

    invoke-direct {v2, p0}, Lhnp;-><init>(Lcom/wandoujia/ripple_framework/view/Spinner;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->k:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setOnMenuSelectListener(Lhnr;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->h:Lhnr;

    .line 245
    return-void
.end method

.method public setTitleRender(Lhnu;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/Spinner;->i:Lhnu;

    .line 249
    return-void
.end method
