.class public Lcom/wandoujia/p4/views/CommonViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CommonViewPager.java"


# instance fields
.field private c:Z

.field private d:Lhw;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->c:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->e:Z

    .line 24
    invoke-direct {p0}, Lcom/wandoujia/p4/views/CommonViewPager;->d()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->c:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->e:Z

    .line 19
    invoke-direct {p0}, Lcom/wandoujia/p4/views/CommonViewPager;->d()V

    .line 20
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/views/CommonViewPager;)Lhw;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->d:Lhw;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/views/CommonViewPager;)V
    .locals 1
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->e:Z

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lgpw;

    invoke-direct {v0, p0}, Lgpw;-><init>(Lcom/wandoujia/p4/views/CommonViewPager;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;ZIII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->c:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    .line 62
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->e:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->e:Z

    .line 65
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/CommonViewPager;->c:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPageChangeListener(Lhw;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wandoujia/p4/views/CommonViewPager;->d:Lhw;

    .line 74
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/wandoujia/p4/views/CommonViewPager;->c:Z

    .line 82
    return-void
.end method
