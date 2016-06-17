.class public Landroid/support/v7/internal/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"


# instance fields
.field public a:Let;

.field private final b:Lpz;

.field private final c:Lqa;

.field private final d:Landroid/support/v7/widget/LinearLayoutCompat;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/widget/FrameLayout;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/FrameLayout;

.field private final i:Landroid/widget/ImageView;

.field private final j:I

.field private final k:Landroid/database/DataSetObserver;

.field private final l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private m:Landroid/support/v7/widget/ListPopupWindow;

.field private n:Landroid/widget/PopupWindow$OnDismissListener;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v0, Lpv;

    invoke-direct {v0, p0}, Lpv;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;

    .line 140
    new-instance v0, Lpw;

    invoke-direct {v0, p0}, Lpw;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 174
    iput v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I

    .line 215
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView_initialActivityCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I

    .line 222
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView_expandActivityOverflowButtonDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 228
    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 230
    new-instance v0, Lqa;

    invoke-direct {v0, p0, v4}, Lqa;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Lqa;

    .line 232
    sget v0, Landroid/support/v7/appcompat/R$id;->activity_chooser_view_content:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 233
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/graphics/drawable/Drawable;

    .line 235
    sget v0, Landroid/support/v7/appcompat/R$id;->default_activity_button:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Lqa;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Lqa;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 238
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    sget v2, Landroid/support/v7/appcompat/R$id;->image:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->i:Landroid/widget/ImageView;

    .line 240
    sget v0, Landroid/support/v7/appcompat/R$id;->expand_activities_button:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 241
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Lqa;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v2, Lpx;

    invoke-direct {v2, p0, v0}, Lpx;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;

    .line 261
    sget v2, Landroid/support/v7/appcompat/R$id;->image:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    new-instance v0, Lpz;

    invoke-direct {v0, p0, v4}, Lpz;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    .line 266
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    new-instance v1, Lpy;

    invoke-direct {v1, p0}, Lpy;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    invoke-virtual {v0, v1}, Lpz;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->j:I

    .line 277
    return-void
.end method

.method public static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;)Lpz;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v0, v0, Lpz;->a:Lpr;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 354
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 357
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v3, v3, Lpz;->a:Lpr;

    invoke-virtual {v3}, Lpr;->a()I

    move-result v4

    .line 358
    if-eqz v0, :cond_5

    move v3, v1

    .line 359
    :goto_1
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_6

    add-int/2addr v3, p1

    if-le v4, v3, :cond_6

    .line 361
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    invoke-virtual {v3, v1}, Lpz;->a(Z)V

    .line 362
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lpz;->a(I)V

    .line 368
    :goto_2
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v3

    .line 369
    iget-object v4, v3, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 370
    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->o:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_7

    .line 371
    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    invoke-virtual {v2, v1, v0}, Lpz;->a(ZZ)V

    .line 375
    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    invoke-virtual {v0}, Lpz;->a()I

    move-result v0

    iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->j:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 376
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ListPopupWindow;->a(I)V

    .line 377
    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->c()V

    .line 378
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Let;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Let;

    invoke-virtual {v0, v1}, Let;->a(Z)V

    .line 381
    :cond_2
    iget-object v0, v3, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 354
    goto :goto_0

    :cond_5
    move v3, v2

    .line 358
    goto :goto_1

    .line 364
    :cond_6
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    invoke-virtual {v3, v2}, Lpz;->a(Z)V

    .line 365
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    invoke-virtual {v3, p1}, Lpz;->a(I)V

    goto :goto_2

    .line 373
    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    invoke-virtual {v0, v2, v2}, Lpz;->a(ZZ)V

    goto :goto_3
.end method

.method public static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(I)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->o:Z

    return p1
.end method

.method public static synthetic b(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/widget/ListPopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    invoke-virtual {v0}, Lpz;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v0, v0, Lpz;->a:Lpr;

    invoke-virtual {v0}, Lpr;->a()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v1, v1, Lpz;->a:Lpr;

    invoke-virtual {v1}, Lpr;->d()I

    move-result v1

    if-eq v0, v4, :cond_0

    if-le v0, v4, :cond_3

    if-lez v1, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v0, v0, Lpz;->a:Lpr;

    invoke-virtual {v0}, Lpr;->c()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->r:I

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->r:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/support/v7/widget/LinearLayoutCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/support/v7/widget/LinearLayoutCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public static synthetic d(Landroid/support/v7/internal/widget/ActivityChooserView;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->o:Z

    return v0
.end method

.method public static synthetic e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic g(Landroid/support/v7/internal/widget/ActivityChooserView;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I

    return v0
.end method

.method private getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/widget/ListPopupWindow;

    .line 507
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 508
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->d()V

    .line 510
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Lqa;

    iput-object v1, v0, Landroid/support/v7/widget/ListPopupWindow;->i:Landroid/widget/AdapterView$OnItemClickListener;

    .line 511
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Lqa;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method public static synthetic h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->n:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->q:Z

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->o:Z

    .line 338
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(I)V

    .line 339
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->a()V

    .line 394
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 399
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public getDataModel()Lpr;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v0, v0, Lpz;->a:Lpr;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 414
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v0, v0, Lpz;->a:Lpr;

    .line 415
    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lpr;->registerObserver(Ljava/lang/Object;)V

    .line 418
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->q:Z

    .line 419
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 424
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v0, v0, Lpz;->a:Lpr;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lpr;->unregisterObserver(Ljava/lang/Object;)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 432
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z

    .line 435
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->q:Z

    .line 436
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/support/v7/widget/LinearLayoutCompat;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->layout(IIII)V

    .line 455
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z

    .line 458
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 444
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 448
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/internal/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 450
    return-void
.end method

.method public setActivityChooserModel(Lpr;)V
    .locals 3
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v1, v0, Lpz;->b:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lpz;

    iget-object v1, v1, Lpz;->a:Lpr;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lpz;->b:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lpz;->b:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v2, v2, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lpr;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, v0, Lpz;->a:Lpr;

    if-eqz p1, :cond_1

    iget-object v1, v0, Lpz;->b:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lpz;->b:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Lpr;->registerObserver(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lpz;->notifyDataSetChanged()V

    .line 284
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    .line 288
    :cond_2
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->r:I

    .line 497
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .parameter

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I

    .line 483
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->n:Landroid/widget/PopupWindow$OnDismissListener;

    .line 471
    return-void
.end method

.method public setProvider(Let;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Let;

    .line 326
    return-void
.end method
