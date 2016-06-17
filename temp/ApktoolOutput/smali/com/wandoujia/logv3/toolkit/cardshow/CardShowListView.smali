.class public Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;
.super Landroid/widget/ListView;
.source "CardShowListView.java"


# instance fields
.field private a:Z

.field private final b:Leoq;

.field private c:Leos;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a:Z

    .line 19
    new-instance v0, Leoq;

    invoke-direct {v0}, Leoq;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->b:Leoq;

    .line 20
    new-instance v0, Leoo;

    invoke-direct {v0, p0}, Leoo;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->c:Leos;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a:Z

    .line 19
    new-instance v0, Leoq;

    invoke-direct {v0}, Leoq;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->b:Leoq;

    .line 20
    new-instance v0, Leoo;

    invoke-direct {v0, p0}, Leoo;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->c:Leos;

    .line 47
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;)Leoq;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->b:Leoq;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->b:Leoq;

    invoke-virtual {v0, p0}, Leoq;->a(Landroid/widget/AbsListView;)V

    .line 65
    :cond_0
    return-void
.end method

.method private setNeedLogCardShow(Landroid/widget/Adapter;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 98
    :cond_1
    instance-of v1, v0, Leog;

    if-eqz v1, :cond_2

    .line 99
    check-cast v0, Leog;

    invoke-interface {v0}, Leog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 100
    invoke-direct {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->setNeedLogCardShow(Landroid/widget/Adapter;)V

    goto :goto_2

    .line 104
    :cond_2
    instance-of v1, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v1, :cond_3

    .line 105
    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_3
    instance-of v1, v0, Leol;

    if-eqz v1, :cond_0

    .line 109
    check-cast v0, Leol;

    iget-object v1, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->c:Leos;

    iput-object v1, v0, Leol;->c:Leos;

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 52
    invoke-direct {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a()V

    .line 53
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 58
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->b:Leoq;

    invoke-virtual {v0}, Leoq;->a()V

    .line 59
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a:Z

    invoke-virtual {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->setNeedLogCardShow(Z)V

    .line 122
    return-void
.end method

.method public setNeedLogCardShow(Z)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a:Z

    .line 80
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->setNeedLogCardShow(Landroid/widget/Adapter;)V

    .line 85
    new-instance v0, Leop;

    invoke-direct {v0, p0}, Leop;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 91
    invoke-direct {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a()V

    goto :goto_0
.end method
