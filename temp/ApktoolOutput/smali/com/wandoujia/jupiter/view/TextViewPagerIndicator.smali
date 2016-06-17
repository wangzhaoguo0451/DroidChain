.class public Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;
.super Landroid/widget/TextView;
.source "TextViewPagerIndicator.java"

# interfaces
.implements Lhw;


# instance fields
.field private a:Lhw;

.field private b:I

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 64
    const-string v0, "%s / %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->a:Lhw;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->a:Lhw;

    invoke-interface {v0, p1}, Lhw;->a(I)V

    .line 92
    :cond_2
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->a:Lhw;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->a:Lhw;

    invoke-interface {v0, p1, p2, p3}, Lhw;->a(IFI)V

    .line 60
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->a:Lhw;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->a:Lhw;

    invoke-interface {v0, p1}, Lhw;->b(I)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 53
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->a(I)V

    .line 103
    return-void
.end method

.method public setListener(Lhw;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->a:Lhw;

    .line 48
    return-void
.end method

.method public setSnippet(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->d:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->c:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager Adapter has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v0

    invoke-virtual {v0}, Lgf;->c()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/view/TextViewPagerIndicator;->b:I

    .line 35
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lhw;)V

    .line 36
    return-void
.end method
