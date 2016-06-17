.class public abstract Lerv;
.super Leov;
.source "NirvanaRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Leov",
        "<",
        "Lerw;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lerw;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Leov;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lerv;->c:Ljava/util/Set;

    .line 68
    return-void
.end method

.method private c(Lerw;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Leov;->a(Lux;)V

    .line 113
    if-eqz p1, :cond_1

    iget-object v0, p1, Lerw;->k:Lerf;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p1, Lerw;->k:Lerf;

    invoke-virtual {v0}, Lerf;->a()V

    .line 119
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_2

    const-string v0, "holder"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "holder.presenter"

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Lux;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lerw;

    invoke-virtual {p0, p1, p2}, Lerv;->b(Landroid/view/ViewGroup;I)Lerf;

    move-result-object v1

    invoke-direct {v0, v1}, Lerw;-><init>(Lerf;)V

    return-object v0
.end method

.method public a(Lerw;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Leov;->b(Lux;)V

    .line 83
    return-void
.end method

.method public a(Lerw;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Leov;->a(Lux;I)V

    .line 88
    iget-object v0, p0, Lerv;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget-object v1, p1, Lerw;->k:Lerf;

    invoke-virtual {v1, v0}, Lerf;->a(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public final synthetic a(Lux;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    check-cast p1, Lerw;

    invoke-direct {p0, p1}, Lerv;->c(Lerw;)V

    return-void
.end method

.method public bridge synthetic a(Lux;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p1, Lerw;

    invoke-virtual {p0, p1, p2}, Lerv;->a(Lerw;I)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 133
    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v3

    .line 136
    :cond_1
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lerv;->d:Ljava/util/List;

    .line 139
    :cond_2
    if-ltz p1, :cond_0

    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 140
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 141
    invoke-virtual {p0, p1}, Lerv;->d(I)I

    move-result v0

    iget-object v1, p0, Luh;->a:Lui;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lui;->b(II)V

    goto :goto_0
.end method

.method public final a(ILjava/util/List;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {p2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lerv;->d:Ljava/util/List;

    if-nez v1, :cond_2

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lerv;->d:Ljava/util/List;

    .line 157
    :cond_2
    if-ltz p1, :cond_0

    iget-object v1, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 158
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 159
    invoke-virtual {p0, p1}, Lerv;->d(I)I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lerv;->b(II)V

    .line 160
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-object v1, p0, Lerv;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 168
    if-ltz v1, :cond_0

    iget-object v2, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 169
    iget-object v2, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, v1}, Lerv;->d(I)I

    move-result v1

    iget-object v2, p0, Luh;->a:Lui;

    invoke-virtual {v2, v1, v0}, Lui;->c(II)V

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lerv;->d:Ljava/util/List;

    .line 124
    iget-object v0, p0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b(Landroid/view/ViewGroup;I)Lerf;
.end method

.method public b(Lerw;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Leov;->c(Lux;)V

    .line 78
    return-void
.end method

.method public synthetic b(Lux;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    check-cast p1, Lerw;

    invoke-virtual {p0, p1}, Lerv;->a(Lerw;)V

    return-void
.end method

.method public final b(ILjava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 194
    if-ltz p1, :cond_1

    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 195
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 196
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Lerv;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lerv;->c(I)V

    .line 199
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(ILjava/util/List;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lerv;->d:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 207
    if-ltz p1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 208
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lerv;->d:Ljava/util/List;

    add-int v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 210
    iget-object v1, p0, Lerv;->d:Ljava/util/List;

    add-int v2, p1, v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0, p1}, Lerv;->d(I)I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lerv;->a(II)V

    .line 214
    const/4 v0, 0x1

    .line 217
    :cond_2
    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroy view holders "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lerv;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    iget-object v0, p0, Lerv;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerw;

    .line 105
    invoke-direct {p0, v0}, Lerv;->c(Lerw;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lerv;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 108
    return-void
.end method

.method public synthetic c(Lux;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    check-cast p1, Lerw;

    invoke-virtual {p0, p1}, Lerv;->b(Lerw;)V

    return-void
.end method

.method protected d(I)I
    .locals 0
    .parameter

    .prologue
    .line 221
    return p1
.end method
