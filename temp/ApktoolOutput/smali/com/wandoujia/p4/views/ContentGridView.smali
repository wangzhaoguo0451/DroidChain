.class public Lcom/wandoujia/p4/views/ContentGridView;
.super Landroid/widget/GridView;
.source "ContentGridView.java"

# interfaces
.implements Lgxq;


# instance fields
.field private final a:Lgxn;

.field private final b:Lgxo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lgxn;

    invoke-direct {v0}, Lgxn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->a:Lgxn;

    .line 18
    new-instance v0, Lgxo;

    invoke-direct {v0}, Lgxo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->b:Lgxo;

    .line 21
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->a:Lgxn;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lgxn;

    invoke-direct {v0}, Lgxn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->a:Lgxn;

    .line 18
    new-instance v0, Lgxo;

    invoke-direct {v0}, Lgxo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->b:Lgxo;

    .line 21
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->a:Lgxn;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Lgxn;

    invoke-direct {v0}, Lgxn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->a:Lgxn;

    .line 18
    new-instance v0, Lgxo;

    invoke-direct {v0}, Lgxo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->b:Lgxo;

    .line 21
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->a:Lgxn;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->a:Lgxn;

    invoke-virtual {v0, p1}, Lgxn;->b(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 102
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 42
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->b:Lgxo;

    invoke-virtual {v0, p0}, Lgxo;->a(Landroid/widget/AbsListView;)V

    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ContentGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 48
    :goto_0
    if-eqz v0, :cond_0

    .line 49
    instance-of v1, v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    invoke-virtual {v0, p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setAssociatedListView(Landroid/widget/AbsListView;)V

    .line 55
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->b:Lgxo;

    invoke-virtual {v0, p0}, Lgxo;->a(Lgxq;)V

    .line 64
    return-void
.end method

.method public setNeedLogCardShow(Z)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentGridView;->a:Lgxn;

    invoke-virtual {v0, p1}, Lgxn;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    return-void
.end method
