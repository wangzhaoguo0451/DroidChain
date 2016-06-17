.class public Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;
.super Landroid/widget/GridView;
.source "CardShowGridView.java"


# instance fields
.field private a:Z

.field private final b:Leoq;

.field private c:Leos;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a:Z

    .line 19
    new-instance v0, Leoq;

    invoke-direct {v0}, Leoq;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->b:Leoq;

    .line 20
    new-instance v0, Leom;

    invoke-direct {v0, p0}, Leom;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->c:Leos;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a:Z

    .line 19
    new-instance v0, Leoq;

    invoke-direct {v0}, Leoq;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->b:Leoq;

    .line 20
    new-instance v0, Leom;

    invoke-direct {v0, p0}, Leom;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->c:Leos;

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a:Z

    .line 19
    new-instance v0, Leoq;

    invoke-direct {v0}, Leoq;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->b:Leoq;

    .line 20
    new-instance v0, Leom;

    invoke-direct {v0, p0}, Leom;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->c:Leos;

    .line 47
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;)Leoq;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->b:Leoq;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->b:Leoq;

    invoke-virtual {v0, p0}, Leoq;->a(Landroid/widget/AbsListView;)V

    .line 66
    :cond_0
    return-void
.end method

.method private setNeedLogCardShow(Landroid/widget/Adapter;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_1
    return-void

    .line 99
    :cond_1
    instance-of v1, v0, Leog;

    if-eqz v1, :cond_2

    .line 100
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

    .line 101
    invoke-direct {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->setNeedLogCardShow(Landroid/widget/Adapter;)V

    goto :goto_2

    .line 105
    :cond_2
    instance-of v1, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v1, :cond_3

    .line 106
    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_3
    instance-of v1, v0, Leol;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Leol;

    iget-object v1, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->c:Leos;

    iput-object v1, v0, Leol;->c:Leos;

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 53
    invoke-direct {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a()V

    .line 54
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 59
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->b:Leoq;

    invoke-virtual {v0}, Leoq;->a()V

    .line 60
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a:Z

    invoke-virtual {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->setNeedLogCardShow(Z)V

    .line 123
    return-void
.end method

.method public setNeedLogCardShow(Z)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a:Z

    .line 81
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->setNeedLogCardShow(Landroid/widget/Adapter;)V

    .line 86
    new-instance v0, Leon;

    invoke-direct {v0, p0}, Leon;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 92
    invoke-direct {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a()V

    goto :goto_0
.end method
