.class public Lftr;
.super Lgf;
.source "TabFragmentPagerAdapter.java"

# interfaces
.implements Lhoy;


# instance fields
.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Ls;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lag;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/v4/app/Fragment;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lftr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ls;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lgf;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lftr;->e:Ljava/util/List;

    .line 37
    iput-object v1, p0, Lftr;->f:Lag;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lftr;->g:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lftr;->h:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lftr;->b:Landroid/util/SparseArray;

    .line 41
    iput-object v1, p0, Lftr;->i:Landroid/support/v4/app/Fragment;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lftr;->j:Z

    .line 49
    iput-object p2, p0, Lftr;->d:Ls;

    .line 50
    iput-object p1, p0, Lftr;->c:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 306
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 301
    iget-object v0, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    .line 302
    if-eqz v0, :cond_2

    iget-object v3, v0, Lftq;->a:Lhow;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lftq;->a:Lhow;

    iget-object v0, v0, Lhow;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 306
    goto :goto_0
.end method

.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v0, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lftr;->f:Lag;

    if-nez v0, :cond_1

    iget-object v0, p0, Lftr;->d:Ls;

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    iput-object v0, p0, Lftr;->f:Lag;

    :cond_1
    iget-object v1, p0, Lftr;->c:Landroid/content/Context;

    iget-object v0, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    iget-object v0, v0, Lftq;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lftr;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v0, v1, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;

    iget-boolean v2, p0, Lftr;->j:Z

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->setAllowLoading(Z)V

    :cond_2
    iget-object v0, p0, Lftr;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    :cond_3
    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    iget-object v0, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lftr;->f:Lag;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-object v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lftr;->f:Lag;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lftr;->f:Lag;

    invoke-virtual {v0}, Lag;->b()I

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lftr;->f:Lag;

    .line 213
    iget-object v0, p0, Lftr;->d:Ls;

    invoke-virtual {v0}, Ls;->b()Z

    .line 215
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 244
    if-eqz p1, :cond_2

    .line 245
    check-cast p1, Landroid/os/Bundle;

    .line 246
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 247
    const-string v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lftr;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 249
    iget-object v1, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iput-object v0, p0, Lftr;->h:Landroid/util/SparseArray;

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    const-string v2, "f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 258
    :try_start_0
    iget-object v3, p0, Lftr;->d:Ls;

    invoke-virtual {v3, p1, v0}, Ls;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_1

    .line 260
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 261
    iget-object v3, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 269
    :cond_2
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 180
    iget-object v0, p0, Lftr;->f:Lag;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lftr;->d:Ls;

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    iput-object v0, p0, Lftr;->f:Lag;

    .line 183
    :cond_0
    iget-object v0, p0, Lftr;->h:Landroid/util/SparseArray;

    iget-object v1, p0, Lftr;->d:Ls;

    invoke-virtual {v1, p3}, Ls;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 186
    iget-object v0, p0, Lftr;->f:Lag;

    invoke-virtual {v0, p3}, Lag;->a(Landroid/support/v4/app/Fragment;)Lag;

    .line 187
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    invoke-virtual {p0, p1}, Lftr;->b(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(I)Lhow;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 273
    iget-object v1, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 279
    iget-object v0, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    iget-object v0, v0, Lftq;->a:Lhow;

    goto :goto_0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lftr;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    const-string v1, "state"

    iget-object v2, p0, Lftr;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 229
    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 230
    iget-object v0, p0, Lftr;->g:Landroid/util/SparseArray;

    iget-object v3, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 231
    if-eqz v0, :cond_2

    .line 232
    if-nez v2, :cond_1

    .line 233
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 235
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lftr;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lftr;->d:Ls;

    invoke-virtual {v4, v2, v3, v0}, Ls;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 229
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 239
    :cond_3
    return-object v2
.end method

.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 192
    iget-object v0, p0, Lftr;->i:Landroid/support/v4/app/Fragment;

    if-eq p3, v0, :cond_2

    .line 193
    iget-object v0, p0, Lftr;->i:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lftr;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 195
    iget-object v0, p0, Lftr;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 197
    :cond_0
    if-eqz p3, :cond_1

    .line 198
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 199
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 201
    :cond_1
    iput-object p3, p0, Lftr;->i:Landroid/support/v4/app/Fragment;

    .line 203
    :cond_2
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "delegates should not be null for setFragments()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int v3, v2, v0

    move v1, v2

    .line 82
    :goto_0
    if-ge v1, v3, :cond_1

    .line 83
    sub-int v0, v1, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    .line 84
    iget-object v4, p0, Lftr;->b:Landroid/util/SparseArray;

    iget-object v0, v0, Lftq;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v0, p0, Lgf;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 89
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lftr;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
