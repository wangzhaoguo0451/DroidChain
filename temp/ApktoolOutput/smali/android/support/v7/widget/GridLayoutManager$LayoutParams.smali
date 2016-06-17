.class public Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 859
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>()V

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    .line 852
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 860
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 855
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    .line 852
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 856
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 867
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    .line 852
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 868
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 863
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    .line 852
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    .line 864
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 843
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 843
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 843
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 843
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    return p1
.end method
