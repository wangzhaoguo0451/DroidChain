.class public Leus;
.super Landroid/widget/BaseAdapter;
.source "HeaderViewAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ListAdapter;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Leus;->b:Landroid/widget/ListAdapter;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leus;->a:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leus;->c:Ljava/util/List;

    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Leus;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 84
    :cond_0
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Leus;->notifyDataSetChanged()V

    .line 87
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Leus;->notifyDataSetChanged()V

    .line 77
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Leus;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Leus;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0}, Leus;->notifyDataSetChanged()V

    .line 94
    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Leus;->notifyDataSetChanged()V

    .line 108
    :cond_0
    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Leus;->b()I

    move-result v0

    invoke-direct {p0}, Leus;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Leus;->b()I

    move-result v0

    invoke-direct {p0}, Leus;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Leus;->a()I

    move-result v1

    .line 129
    if-ge p1, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    sub-int v1, p1, v1

    .line 134
    iget-object v2, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 137
    if-ge v1, v2, :cond_0

    .line 138
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Leus;->a()I

    move-result v0

    .line 147
    iget-object v1, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 148
    sub-int v0, p1, v0

    .line 149
    iget-object v1, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 150
    if-ge v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 154
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Leus;->a()I

    move-result v0

    .line 187
    iget-object v1, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 188
    sub-int v0, p1, v0

    .line 189
    iget-object v1, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 190
    if-ge v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Leus;->a()I

    move-result v0

    .line 167
    if-ge p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 182
    :goto_0
    return-object v0

    .line 172
    :cond_0
    sub-int v1, p1, v0

    .line 173
    const/4 v0, 0x0

    .line 174
    iget-object v2, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 175
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 176
    if-ge v1, v0, :cond_1

    .line 177
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Leus;->c:Ljava/util/List;

    sub-int v0, v1, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 208
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 211
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Leus;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 218
    :cond_0
    return-void
.end method
