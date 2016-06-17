.class public final Laid;
.super Landroid/widget/BaseAdapter;
.source "StickyListHeadersAdapterWrapper.java"

# interfaces
.implements Laic;
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field public final a:Laic;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field private final g:Landroid/content/Context;

.field private final h:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/util/SparseIntArray;

.field private j:I

.field private k:I

.field private l:Z

.field private final m:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Laid;-><init>(Landroid/content/Context;Laic;B)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Laic;B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Laid;->h:Ljava/util/WeakHashMap;

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Laid;->k:I

    .line 45
    iput-boolean v1, p0, Laid;->l:Z

    .line 47
    new-instance v0, Laie;

    invoke-direct {v0, p0}, Laie;-><init>(Laid;)V

    iput-object v0, p0, Laid;->m:Landroid/database/DataSetObserver;

    .line 69
    iput-object p1, p0, Laid;->g:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Laid;->a:Laic;

    .line 71
    iput-boolean v1, p0, Laid;->l:Z

    .line 72
    iget-object v0, p0, Laid;->m:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Laic;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    return-void
.end method

.method static synthetic a(Laid;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    const/4 v0, -0x1

    iput v0, p0, Laid;->k:I

    return v0
.end method


# virtual methods
.method public final a(I)J
    .locals 2
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Laid;->a:Laic;

    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v1

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
    .line 280
    iget-object v0, p0, Laid;->a:Laic;

    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Laic;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Laid;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 2
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Laid;->getItemViewType(I)I

    move-result v0

    .line 181
    iget v1, p0, Laid;->e:I

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 183
    :cond_0
    iget v1, p0, Laid;->d:I

    if-ne v0, v1, :cond_1

    .line 184
    iget-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Laid;->a:Laic;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 12

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget v0, p0, Laid;->k:I

    if-gez v0, :cond_3

    .line 108
    iget-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 109
    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0}, Laic;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0, v2}, Laic;->a(I)J

    move-result-wide v4

    iget-boolean v0, p0, Laid;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Laid;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    move v6, v1

    move-wide v10, v4

    move v4, v2

    move v5, v0

    move-wide v2, v10

    :goto_1
    if-ge v6, v7, :cond_2

    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0, v6}, Laic;->a(I)J

    move-result-wide v0

    cmp-long v8, v2, v0

    if-eqz v8, :cond_0

    iget-object v2, p0, Laid;->i:Landroid/util/SparseIntArray;

    add-int v3, v6, v5

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v5, 0x1

    move v3, v2

    move v2, v4

    :goto_2
    iget-object v4, p0, Laid;->i:Landroid/util/SparseIntArray;

    add-int v5, v6, v3

    add-int/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v2

    move-wide v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    add-int v1, v6, v5

    add-int/2addr v1, v4

    const/4 v8, -0x2

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v4, 0x1

    move-wide v10, v2

    move v2, v0

    move v3, v5

    move-wide v0, v10

    goto :goto_2

    :cond_1
    move v4, v2

    move v5, v2

    :cond_2
    iput v4, p0, Laid;->j:I

    iput v5, p0, Laid;->f:I

    .line 110
    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0}, Laic;->getCount()I

    move-result v0

    iget v1, p0, Laid;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Laid;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Laid;->k:I

    .line 112
    :cond_3
    iget v0, p0, Laid;->k:I

    return v0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Laid;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Laid;->e:I

    if-ne v0, v1, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v1

    .line 264
    iget-object v0, p0, Laid;->a:Laic;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Laid;->getItemViewType(I)I

    move-result v0

    .line 153
    iget v1, p0, Laid;->e:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Laid;->d:I

    if-ne v0, v1, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 156
    :cond_1
    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v0

    .line 157
    iget-object v1, p0, Laid;->a:Laic;

    invoke-interface {v1, v0}, Laic;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Laid;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Laid;->e:I

    if-ne v0, v1, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v0

    .line 164
    iget-object v1, p0, Laid;->a:Laic;

    invoke-interface {v1, v0}, Laic;->a(I)J

    move-result-wide v0

    .line 167
    :goto_0
    return-wide v0

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v0

    .line 167
    iget-object v1, p0, Laid;->a:Laic;

    invoke-interface {v1, v0}, Laic;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Laid;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 195
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 196
    iget v0, p0, Laid;->e:I

    .line 203
    :goto_0
    return v0

    .line 199
    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 200
    iget v0, p0, Laid;->d:I

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Laid;->a:Laic;

    invoke-interface {v1, v0}, Laic;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Laid;->getItemViewType(I)I

    move-result v0

    .line 223
    iget v1, p0, Laid;->e:I

    if-ne v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Laid;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Laid;->a:Laic;

    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Laic;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 229
    iget-object v1, p0, Laid;->h:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object p2, v0

    .line 240
    :cond_0
    :goto_1
    return-object p2

    .line 230
    :cond_1
    iget v1, p0, Laid;->d:I

    if-ne v0, v1, :cond_2

    .line 231
    if-nez p2, :cond_0

    .line 232
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Laid;->g:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Laid;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Laid;->c:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 236
    :cond_2
    iget-object v0, p0, Laid;->a:Laic;

    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Laic;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0}, Laic;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Laid;->e:I

    .line 209
    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0}, Laic;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laid;->d:I

    .line 211
    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0}, Laic;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Laid;->a:Laic;

    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0}, Laic;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Laid;->a:Laic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Laid;->a:Laic;

    invoke-interface {v0}, Laic;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Laid;->getItemViewType(I)I

    move-result v2

    .line 95
    iget v3, p0, Laid;->e:I

    if-ne v2, v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    iget v3, p0, Laid;->d:I

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v2

    .line 101
    iget-object v3, p0, Laid;->a:Laic;

    invoke-interface {v3}, Laic;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Laid;->a:Laic;

    invoke-interface {v3, v2}, Laic;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Laid;->a:Laic;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
