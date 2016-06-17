.class public abstract Leut;
.super Landroid/widget/BaseAdapter;
.source "MarginAdapterWrapper.java"

# interfaces
.implements Laic;
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private a:I

.field private b:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Leut;->a:I

    .line 29
    iput-object p1, p0, Leut;->b:Landroid/widget/BaseAdapter;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    check-cast v0, Laic;

    div-int/lit8 v1, p1, 0x3

    invoke-interface {v0, v1}, Laic;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    check-cast v0, Laic;

    div-int/lit8 v1, p1, 0x3

    invoke-interface {v0, v1, p2, p3}, Laic;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(I)I
.end method

.method public abstract c(I)I
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    div-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    div-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 43
    rem-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    div-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Leut;->a:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Leut;->getItemViewType(I)I

    move-result v2

    iget v3, p0, Leut;->a:I

    if-ne v2, v3, :cond_6

    .line 69
    invoke-virtual {p0, p1}, Leut;->getItemViewType(I)I

    move-result v2

    iget v3, p0, Leut;->a:I

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The view type at the position must be margin view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    rem-int/lit8 v2, p1, 0x3

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    div-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Leut;->b(I)I

    move-result v0

    move v1, v0

    :goto_1
    if-nez p2, :cond_5

    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_3
    return-object p2

    :cond_1
    move v2, v1

    .line 69
    goto :goto_0

    :cond_2
    rem-int/lit8 v2, p1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :goto_4
    if-eqz v0, :cond_4

    div-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Leut;->c(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The view at the position must be margin top or margin bottom."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 71
    :cond_6
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    div-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Leut;->a:I

    .line 53
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 121
    iget-object v0, p0, Leut;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 122
    return-void
.end method
