.class public Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CommonViewPager.java"


# instance fields
.field private c:Z

.field private d:Lhw;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->c:Z

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->e:Z

    .line 18
    new-instance v0, Lerz;

    invoke-direct {v0, p0}, Lerz;-><init>(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)Lhw;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->d:Lhw;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->e:Z

    .line 69
    new-instance v0, Lesa;

    invoke-direct {v0}, Lesa;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->post(Ljava/lang/Runnable;)Z

    .line 75
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
    .line 108
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
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
    .line 92
    iget-boolean v0, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->c:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
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
    .line 58
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    .line 61
    iget-boolean v0, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->e:Z

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->d()V

    .line 64
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->c:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
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
    .line 79
    iput-object p1, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->d:Lhw;

    .line 80
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/wandoujia/nirvana/framework/ui/view/CommonViewPager;->c:Z

    .line 88
    return-void
.end method
