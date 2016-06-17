.class public Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;
.super Landroid/widget/RelativeLayout;
.source "SlidingTabDot.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->a:I

    .line 29
    return-void
.end method

.method private b(I)Landroid/widget/ImageView;
    .locals 2
    .parameter

    .prologue
    .line 63
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->removeAllViews()V

    .line 38
    if-gt p1, v7, :cond_1

    .line 60
    :cond_0
    return-void

    .line 42
    :cond_1
    const/high16 v0, 0x40a0

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Ld;->a(FLandroid/content/Context;)I

    move-result v2

    move v0, v1

    .line 43
    :goto_0
    if-ge v0, p1, :cond_0

    .line 45
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    if-lez v0, :cond_2

    .line 49
    add-int/lit8 v5, v0, 0x64

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50
    :cond_2
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v3, v2, v1, v2, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 53
    add-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 54
    iget v4, p0, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->a:I

    if-ne v0, v4, :cond_3

    .line 55
    sget v4, Lcom/wandoujia/launcher_base/R$drawable;->launcher_tab_dot:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    :goto_1
    invoke-virtual {p0, v3}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->addView(Landroid/view/View;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_3
    sget v4, Lcom/wandoujia/launcher_base/R$drawable;->launcher_tab_dot_s:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setSelect(I)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->a:I

    invoke-direct {p0, v0}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->b(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    sget v1, Lcom/wandoujia/launcher_base/R$drawable;->launcher_tab_dot_s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->b(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    sget v1, Lcom/wandoujia/launcher_base/R$drawable;->launcher_tab_dot:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iput p1, p0, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->a:I

    .line 86
    :cond_1
    return-void
.end method
