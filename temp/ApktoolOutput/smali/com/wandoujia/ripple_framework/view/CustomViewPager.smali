.class public Lcom/wandoujia/ripple_framework/view/CustomViewPager;
.super Lcom/wandoujia/logv3/toolkit/LogViewPager;
.source "CustomViewPager.java"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/toolkit/LogViewPager;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/CustomViewPager;->c:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/logv3/toolkit/LogViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/CustomViewPager;->c:Z

    .line 28
    return-void
.end method

.method private b(Landroid/view/View;ZIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v6, p1

    .line 48
    check-cast v6, Landroid/view/ViewGroup;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 51
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_1

    .line 57
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lgs;->n(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    .line 59
    invoke-static {v1}, Lgs;->m(Landroid/view/View;)F

    move-result v2

    float-to-int v2, v2

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v0, v4

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v2

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v2, v5

    .line 64
    add-int v5, p4, v8

    if-lt v5, v4, :cond_0

    add-int v5, p4, v8

    if-ge v5, v2, :cond_0

    add-int v2, p5, v9

    if-lt v2, v3, :cond_0

    add-int v2, p5, v9

    if-ge v2, v0, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v8

    sub-int v4, v0, v4

    add-int v0, p5, v9

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/ripple_framework/view/CustomViewPager;->b(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 73
    :goto_1
    return v0

    .line 53
    :cond_0
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 70
    :cond_1
    if-eqz p2, :cond_2

    instance-of v0, p1, Lcom/wandoujia/ripple_framework/view/InlineRecyclerView;

    if-eqz v0, :cond_2

    .line 71
    const/4 v0, 0x1

    goto :goto_1

    .line 73
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Lgs;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final a(Landroid/view/View;ZIII)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 32
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/CustomViewPager;->c:Z

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    if-eqz p2, :cond_2

    instance-of v1, p1, Lcom/wandoujia/ripple_framework/view/InlineRecyclerView;

    if-nez v1, :cond_0

    .line 38
    :cond_2
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/wandoujia/ripple_framework/view/CustomViewPager;->b(Landroid/view/View;ZIII)Z

    move-result v0

    goto :goto_0

    .line 41
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    goto :goto_0
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/view/CustomViewPager;->c:Z

    .line 88
    return-void
.end method
