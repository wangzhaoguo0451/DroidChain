.class public Lcom/wandoujia/p4/views/ContentExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "ContentExpandableListView.java"

# interfaces
.implements Lgxq;


# instance fields
.field private final a:Lgxn;

.field private final b:Lgxo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Lgxn;

    invoke-direct {v0}, Lgxn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->a:Lgxn;

    .line 19
    new-instance v0, Lgxo;

    invoke-direct {v0}, Lgxo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->b:Lgxo;

    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->a:Lgxn;

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Lgxn;

    invoke-direct {v0}, Lgxn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->a:Lgxn;

    .line 19
    new-instance v0, Lgxo;

    invoke-direct {v0}, Lgxo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->b:Lgxo;

    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->a:Lgxn;

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->a:Lgxn;

    invoke-virtual {v0, p1}, Lgxn;->b(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onAttachedToWindow()V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->b:Lgxo;

    invoke-virtual {v0, p0}, Lgxo;->a(Landroid/widget/AbsListView;)V

    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ContentExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 82
    :goto_0
    if-eqz v0, :cond_0

    .line 83
    instance-of v1, v0, Lcom/wandoujia/p4/views/ScrollDownLayout;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setAssociatedListView(Landroid/widget/AbsListView;)V

    .line 89
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onDetachedFromWindow()V

    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->b:Lgxo;

    invoke-virtual {v0, p0}, Lgxo;->a(Lgxq;)V

    .line 95
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentExpandableListView;->a:Lgxn;

    invoke-virtual {v0, p1}, Lgxn;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    return-void
.end method
