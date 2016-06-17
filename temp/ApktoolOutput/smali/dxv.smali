.class public abstract Ldxv;
.super Luh;
.source "HeaderViewRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lux;",
        ">",
        "Luh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Luh;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldxv;->b:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldxv;->c:Landroid/util/SparseArray;

    .line 31
    return-void
.end method

.method private c()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Ldxv;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldxv;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Ldxv;->b()I

    move-result v0

    invoke-direct {p0}, Ldxv;->c()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ldxv;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ldxv;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 3
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ldxv;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Ldxv;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 103
    :cond_0
    invoke-direct {p0}, Ldxv;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 104
    invoke-virtual {p0}, Ldxv;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 105
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Ldxv;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ldxv;->b()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0
.end method

.method public abstract a(Landroid/view/View;)Lux;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(Landroid/view/ViewGroup;I)Lux;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 112
    if-nez p2, :cond_0

    .line 113
    invoke-virtual {p0}, Ldxv;->d()Lux;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Ldxv;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 117
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0, v0}, Ldxv;->a(Landroid/view/View;)Lux;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Ldxv;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 122
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0, v0}, Ldxv;->a(Landroid/view/View;)Lux;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lux;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ldxv;->c()I

    move-result v0

    sub-int v0, p2, v0

    .line 132
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ldxv;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    invoke-virtual {p0, p1, v0}, Ldxv;->c(Lux;I)V

    .line 135
    :cond_0
    return-void
.end method

.method public abstract b()I
.end method

.method public final b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ldxv;->b:Landroid/util/SparseArray;

    const v1, 0x7fffffff

    iget-object v2, p0, Ldxv;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    iget-object v0, p0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 56
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Ldxv;->c:Landroid/util/SparseArray;

    const v1, -0x7fffffff

    iget-object v2, p0, Ldxv;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 66
    return-void
.end method

.method public abstract c(Lux;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract d()Lux;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
