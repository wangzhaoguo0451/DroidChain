.class public Lcom/wandoujia/launcher/view/SlidingTabDot;
.super Landroid/widget/RelativeLayout;
.source "SlidingTabDot.java"


# instance fields
.field public a:I

.field public b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher/view/SlidingTabDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/view/SlidingTabDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->a:I

    .line 27
    iput v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->b:I

    .line 28
    iput v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->e:I

    .line 40
    iput-object p1, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->c:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/view/SlidingTabDot;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->e:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/view/SlidingTabDot;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/view/SlidingTabDot;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->b:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/view/SlidingTabDot;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->e:I

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/launcher/view/SlidingTabDot;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->a:I

    return v0
.end method


# virtual methods
.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x2

    const/4 v1, 0x0

    .line 44
    iput-object p1, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->d:Landroid/support/v4/view/ViewPager;

    .line 45
    new-instance v0, Leea;

    invoke-direct {v0, p0, v1}, Leea;-><init>(Lcom/wandoujia/launcher/view/SlidingTabDot;B)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 46
    iget-object v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->e:I

    iget-object v0, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v2

    const/high16 v0, 0x40a0

    iget-object v3, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lg;->a(FLandroid/content/Context;)I

    move-result v3

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lgf;->c()I

    move-result v4

    if-ge v0, v4, :cond_2

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-lez v0, :cond_0

    const/4 v6, 0x1

    add-int/lit8 v7, v0, 0x64

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3, v1, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    add-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    iget v5, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->e:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->b:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0, v4}, Lcom/wandoujia/launcher/view/SlidingTabDot;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/wandoujia/launcher/view/SlidingTabDot;->a:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 47
    :cond_2
    return-void
.end method
