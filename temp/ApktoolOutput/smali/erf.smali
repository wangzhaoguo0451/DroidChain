.class public final Lerf;
.super Ljava/lang/Object;
.source "CardPresenter.java"


# instance fields
.field public final a:Leri;

.field public final b:Landroid/view/View;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lerg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lerf;->b:Landroid/view/View;

    .line 55
    iput-object p2, p0, Lerf;->d:Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    new-instance v0, Leri;

    invoke-direct {v0, p1}, Leri;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lerf;->a:Leri;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lerf;->c:Landroid/util/SparseArray;

    .line 59
    return-void
.end method

.method private a(Landroid/util/SparseArray;I)Lerg;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lerg;",
            ">;I)",
            "Lerg;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lerf;->b:Landroid/view/View;

    move-object v1, v0

    .line 99
    :goto_0
    if-nez v1, :cond_1

    .line 100
    const-string v0, "Presenter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IGNORED, VIEW ID NOT FOUND:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    .line 106
    :goto_1
    return-object v0

    .line 97
    :cond_0
    iget-object v1, p0, Lerf;->a:Leri;

    invoke-virtual {v1, v0}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    move-object v1, v0

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerg;

    .line 105
    iput-object v1, v0, Lerg;->f:Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public final a(ILerg;Z)Lerf;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    if-nez p2, :cond_1

    .line 175
    if-eqz p3, :cond_0

    .line 176
    iget-object v0, p0, Lerf;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    :cond_0
    :goto_0
    return-object p0

    .line 181
    :cond_1
    iget-object v0, p0, Lerf;->d:Ljava/lang/Object;

    iput-object v0, p2, Lerg;->h:Ljava/lang/Object;

    .line 182
    iput-object p0, p2, Lerg;->g:Lerf;

    .line 183
    iget-object v0, p0, Lerf;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerg;

    .line 184
    if-eq v0, p2, :cond_0

    .line 187
    if-nez p3, :cond_2

    if-eqz v0, :cond_2

    .line 188
    new-instance v1, Lerh;

    const/4 v2, 0x2

    new-array v2, v2, [Lerg;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-direct {v1, v2}, Lerh;-><init>([Lerg;)V

    .line 189
    iput-object p0, v1, Lerg;->g:Lerf;

    move-object p2, v1

    .line 191
    :cond_2
    iget-object v0, p0, Lerf;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lerf;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lerf;->c:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0}, Lerf;->a(Landroid/util/SparseArray;I)Lerg;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Lerg;->a()V

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lerf;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lerf;->c:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0}, Lerf;->a(Landroid/util/SparseArray;I)Lerg;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1, p1}, Lerg;->a(Ljava/lang/Object;)V

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method
