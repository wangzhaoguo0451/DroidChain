.class public Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;
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
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->c:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->e:Z

    .line 20
    new-instance v0, Legt;

    invoke-direct {v0, p0}, Legt;-><init>(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)Lhw;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->d:Lhw;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->e:Z

    .line 71
    new-instance v0, Legu;

    invoke-direct {v0, p0}, Legu;-><init>(Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->post(Ljava/lang/Runnable;)Z

    .line 77
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
    .line 110
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
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
    .line 94
    iget-boolean v0, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->c:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
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
    .line 60
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    .line 63
    iget-boolean v0, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->e:Z

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->d()V

    .line 66
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->c:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
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
    .line 81
    iput-object p1, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->d:Lhw;

    .line 82
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/wandoujia/launcher_base/launcher/view/CommonViewPager;->c:Z

    .line 90
    return-void
.end method
