.class public Lcom/wandoujia/p4/views/NirvanaListPopupWindow;
.super Landroid/support/v7/widget/ListPopupWindow;
.source "NirvanaListPopupWindow.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private j:I

.field private k:Landroid/widget/ListAdapter;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    const v1, 0x7f010153

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    const v0, 0x7f010153

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, -0x2

    iput v0, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->j:I

    .line 41
    iput-object p1, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a:Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    const/4 v1, 0x4

    iget v2, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->j:I

    .line 47
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 49
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 51
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 53
    iget v4, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->j:I

    invoke-virtual {p0, v4}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a(I)V

    .line 54
    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->e:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/ListPopupWindow;->f:Z

    .line 55
    iput v2, p0, Landroid/support/v7/widget/ListPopupWindow;->d:I

    .line 56
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->d()V

    .line 60
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->j:I

    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->a(I)V

    .line 94
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/view/View;)V

    .line 133
    iput-object p1, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->l:Landroid/view/View;

    .line 134
    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->k:Landroid/widget/ListAdapter;

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method public final c()V
    .locals 11

    .prologue
    const/4 v2, -0x2

    const/4 v0, 0x0

    .line 71
    :try_start_0
    iget v1, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->j:I

    .line 72
    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->k:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    .line 73
    iget-object v4, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->k:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    invoke-super {p0, v0}, Landroid/support/v7/widget/ListPopupWindow;->a(I)V

    .line 76
    invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->c()V

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->c:Ltq;

    check-cast v0, Landroid/support/v7/internal/widget/ListViewCompat;

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/internal/widget/ListViewCompat;->setTag(ILjava/lang/Object;)V

    .line 88
    :goto_1
    return-void

    .line 73
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/16 v3, 0xf

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v1, v7, 0x0

    const/4 v3, 0x0

    rsub-int/lit8 v1, v1, 0xf

    rsub-int/lit8 v1, v1, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a:Landroid/content/Context;

    invoke-direct {v8, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :goto_2
    if-ge v1, v7, :cond_0

    invoke-interface {v4, v1, v2, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_2

    .line 88
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->l:Landroid/view/View;

    return-object v0
.end method
