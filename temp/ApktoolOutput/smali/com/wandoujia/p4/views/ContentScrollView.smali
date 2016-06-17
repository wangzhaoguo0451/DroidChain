.class public Lcom/wandoujia/p4/views/ContentScrollView;
.super Landroid/widget/ScrollView;
.source "ContentScrollView.java"


# instance fields
.field private a:Lgpz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ContentScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 47
    :goto_0
    if-eqz v0, :cond_0

    .line 48
    instance-of v1, v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    invoke-virtual {v0, p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setAssociatedScrollView(Lcom/wandoujia/p4/views/ContentScrollView;)V

    .line 54
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 38
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentScrollView;->a:Lgpz;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentScrollView;->a:Lgpz;

    iget-object v1, v0, Lgpz;->a:Lcom/wandoujia/p4/views/ContentScrollView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/views/ContentScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lgpz;->b:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setDraggable(Z)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, v0, Lgpz;->b:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setDraggable(Z)V

    goto :goto_0
.end method

.method public setOnScrollChangeListener(Lgpz;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wandoujia/p4/views/ContentScrollView;->a:Lgpz;

    .line 33
    return-void
.end method
