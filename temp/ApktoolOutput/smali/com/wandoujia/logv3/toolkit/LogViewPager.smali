.class public Lcom/wandoujia/logv3/toolkit/LogViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "LogViewPager.java"


# instance fields
.field private c:Z

.field private d:Lhw;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->c:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->e:Z

    .line 25
    invoke-direct {p0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->d()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->c:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->e:Z

    .line 20
    invoke-direct {p0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->d()V

    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/logv3/toolkit/LogViewPager;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput p1, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/logv3/toolkit/LogViewPager;)Lhw;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->d:Lhw;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/logv3/toolkit/LogViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 11
    iget v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->f:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/logv3/toolkit/LogViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->e()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Leoe;

    invoke-direct {v0, p0}, Leoe;-><init>(Lcom/wandoujia/logv3/toolkit/LogViewPager;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 72
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->e:Z

    .line 87
    new-instance v0, Leof;

    invoke-direct {v0, p0}, Leof;-><init>(Lcom/wandoujia/logv3/toolkit/LogViewPager;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ZIII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
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
    .line 110
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->c:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
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
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    .line 79
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->e:Z

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->e()V

    .line 82
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->c:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
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
    .line 97
    iput-object p1, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->d:Lhw;

    .line 98
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/wandoujia/logv3/toolkit/LogViewPager;->c:Z

    .line 106
    return-void
.end method
