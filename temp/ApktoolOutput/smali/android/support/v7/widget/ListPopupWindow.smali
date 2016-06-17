.class public Landroid/support/v7/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field public b:Landroid/widget/PopupWindow;

.field public c:Ltq;

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:Landroid/widget/AdapterView$OnItemClickListener;

.field private j:Landroid/content/Context;

.field private k:Landroid/widget/ListAdapter;

.field private l:I

.field private m:I

.field private n:Landroid/database/DataSetObserver;

.field private o:Landroid/view/View;

.field private final p:Lty;

.field private final q:Ltx;

.field private final r:Ltw;

.field private final s:Ltu;

.field private t:Landroid/os/Handler;

.field private u:Landroid/graphics/Rect;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ListPopupWindow;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow;->l:I

    .line 93
    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    .line 98
    iput v2, p0, Landroid/support/v7/widget/ListPopupWindow;->g:I

    .line 100
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow;->h:I

    .line 105
    new-instance v0, Lty;

    invoke-direct {v0, p0, v2}, Lty;-><init>(Landroid/support/v7/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->p:Lty;

    .line 117
    new-instance v0, Ltx;

    invoke-direct {v0, p0, v2}, Ltx;-><init>(Landroid/support/v7/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->q:Ltx;

    .line 118
    new-instance v0, Ltw;

    invoke-direct {v0, p0, v2}, Ltw;-><init>(Landroid/support/v7/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->r:Ltw;

    .line 119
    new-instance v0, Ltu;

    invoke-direct {v0, p0, v2}, Ltu;-><init>(Landroid/support/v7/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->s:Ltu;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->t:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    .line 228
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->j:Landroid/content/Context;

    .line 230
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->d:I

    .line 234
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->e:I

    .line 236
    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->e:I

    if-eqz v1, :cond_0

    .line 237
    iput-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->f:Z

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    new-instance v0, Landroid/support/v7/internal/widget/AppCompatPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    invoke-static {v0}, Ldu;->a(Ljava/util/Locale;)I

    .line 247
    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/ListPopupWindow;)Ltq;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    return-object v0
.end method

.method public static synthetic b(Landroid/support/v7/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static synthetic c(Landroid/support/v7/widget/ListPopupWindow;)Lty;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->p:Lty;

    return-object v0
.end method

.method public static synthetic d(Landroid/support/v7/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->t:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 674
    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    .line 675
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->t:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->p:Lty;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->o:Landroid/view/View;

    .line 436
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->n:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 257
    new-instance v0, Ltv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv;-><init>(Landroid/support/v7/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->n:Landroid/database/DataSetObserver;

    .line 261
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->k:Landroid/widget/ListAdapter;

    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->n:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->k:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Ltq;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_2
    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->k:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->n:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .parameter

    .prologue
    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 685
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 15

    .prologue
    .line 584
    const/4 v7, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->j:Landroid/content/Context;

    new-instance v0, Lto;

    invoke-direct {v0, p0}, Lto;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    new-instance v2, Ltq;

    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->v:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v1, v0}, Ltq;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->k:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Ltq;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Ltq;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltq;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltq;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    new-instance v1, Ltp;

    invoke-direct {v1, p0}, Ltp;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Ltq;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->r:Ltw;

    invoke-virtual {v0, v1}, Ltq;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_1
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/support/v7/widget/ListPopupWindow;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->e:I

    :cond_0
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->e()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v2

    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->l:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    add-int/2addr v0, v2

    .line 586
    :goto_3
    const/4 v1, 0x0

    .line 587
    const/4 v2, 0x0

    .line 589
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->g()Z

    move-result v3

    .line 591
    iget-object v4, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 592
    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 595
    const/4 v4, -0x1

    .line 602
    :goto_4
    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->l:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 605
    if-eqz v3, :cond_d

    move v5, v0

    .line 606
    :goto_5
    if-eqz v3, :cond_f

    .line 607
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    const/4 v0, -0x1

    :goto_6
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 622
    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->e()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->d:I

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->e:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 665
    :cond_1
    :goto_8
    return-void

    .line 584
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    :cond_5
    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_9
    iget-object v10, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    add-int/lit8 v8, v2, 0x0

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingTop()I

    move-result v3

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingBottom()I

    move-result v4

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingLeft()I

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingRight()I

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getDividerHeight()I

    move-result v2

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    if-nez v11, :cond_7

    add-int/2addr v4, v3

    :cond_6
    :goto_a
    if-lez v4, :cond_1b

    add-int/lit8 v0, v0, 0x0

    :goto_b
    add-int/2addr v0, v4

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, -0x8000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/widget/ListPopupWindow;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    :cond_7
    add-int/2addr v4, v3

    if-lez v2, :cond_8

    if-eqz v5, :cond_8

    :goto_c
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    const/4 v3, 0x0

    move v9, v3

    :goto_d
    if-ge v9, v12, :cond_6

    invoke-interface {v11, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v5, :cond_1c

    const/4 v5, 0x0

    move v14, v3

    move-object v3, v5

    move v5, v14

    :goto_e
    invoke-interface {v11, v9, v3, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_9

    iget v13, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v13, :cond_9

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v13, 0x4000

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_f
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    if-lez v9, :cond_1d

    add-int v3, v4, v2

    :goto_10
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    if-lt v4, v8, :cond_a

    move v4, v8

    goto :goto_a

    :cond_8
    const/4 v2, 0x0

    goto :goto_c

    :cond_9
    const/4 v3, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_f

    :cond_a
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_d

    .line 596
    :cond_b
    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_c

    .line 597
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    goto/16 :goto_4

    .line 599
    :cond_c
    iget v4, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    goto/16 :goto_4

    .line 605
    :cond_d
    const/4 v5, -0x1

    goto/16 :goto_5

    .line 607
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 611
    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    const/4 v0, -0x1

    :goto_11
    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto/16 :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 616
    :cond_11
    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->l:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    move v5, v0

    .line 617
    goto/16 :goto_7

    .line 619
    :cond_12
    iget v5, p0, Landroid/support/v7/widget/ListPopupWindow;->l:I

    goto/16 :goto_7

    .line 627
    :cond_13
    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 628
    const/4 v1, -0x1

    .line 637
    :goto_12
    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->l:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    .line 638
    const/4 v0, -0x1

    .line 647
    :goto_13
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 648
    sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->q:Ltx;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->e()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->d:I

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->e:I

    iget v4, p0, Landroid/support/v7/widget/ListPopupWindow;->g:I

    invoke-static {v0, v1, v2, v3, v4}, Llk;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ltq;->setSelection(I)V

    .line 658
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->v:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    invoke-virtual {v0}, Ltq;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 659
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->f()V

    .line 661
    :cond_16
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->v:Z

    if-nez v0, :cond_1

    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->t:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->s:Ltu;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 630
    :cond_17
    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_18

    .line 631
    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_12

    .line 633
    :cond_18
    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/ListPopupWindow;->m:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_12

    .line 640
    :cond_19
    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->l:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1a

    .line 641
    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto :goto_13

    .line 643
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->l:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto/16 :goto_13

    :catch_0
    move-exception v0

    goto :goto_14

    :cond_1b
    move v0, v7

    goto/16 :goto_b

    :cond_1c
    move-object v3, v6

    goto/16 :goto_e

    :cond_1d
    move v3, v4

    goto/16 :goto_10

    .line 584
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 304
    iput-boolean v1, p0, Landroid/support/v7/widget/ListPopupWindow;->v:Z

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 306
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->o:Landroid/view/View;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    .line 748
    if-eqz v0, :cond_0

    .line 750
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltq;->a(Ltq;Z)Z

    .line 752
    invoke-virtual {v0}, Ltq;->requestLayout()V

    .line 754
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
