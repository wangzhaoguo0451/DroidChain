.class public Lcom/wandoujia/launcher/launcher/views/CommonViewPager;
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
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->c:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->e:Z

    .line 22
    new-instance v0, Lecc;

    invoke-direct {v0, p0}, Lecc;-><init>(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 23
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)Lhw;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->d:Lhw;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->e:Z

    .line 73
    new-instance v0, Lecd;

    invoke-direct {v0, p0}, Lecd;-><init>(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->post(Ljava/lang/Runnable;)Z

    .line 79
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
    .line 112
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 115
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
    .line 96
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->c:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
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
    .line 62
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    .line 65
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->e:Z

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->d()V

    .line 68
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->c:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
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
    .line 83
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->d:Lhw;

    .line 84
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->c:Z

    .line 92
    return-void
.end method
