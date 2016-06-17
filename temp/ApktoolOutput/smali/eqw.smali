.class public abstract Leqw;
.super Ljava/lang/Object;
.source "DataList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Leqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqx",
            "<TT;>;"
        }
    .end annotation
.end field

.field public b:Leqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqx",
            "<TT;>;"
        }
    .end annotation
.end field

.field public c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lera",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Leqw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Leqx;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leqx",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Leqw;->a:Leqx;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Leqw;->d:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqw;->c:Z

    .line 48
    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Leqw;->a:Leqx;

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    if-ne p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Leqw;->a:Leqx;

    invoke-interface {v0}, Leqx;->a()V

    .line 67
    :cond_0
    iget-object v0, p0, Leqw;->a:Leqx;

    invoke-interface {v0, p2}, Leqx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 69
    :cond_1
    iget-object v0, p0, Leqw;->b:Leqx;

    if-eqz v0, :cond_3

    .line 70
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    if-ne p1, v0, :cond_2

    .line 71
    iget-object v0, p0, Leqw;->b:Leqx;

    invoke-interface {v0}, Leqx;->a()V

    .line 73
    :cond_2
    iget-object v0, p0, Leqw;->b:Leqx;

    invoke-interface {v0, p2}, Leqx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 75
    :cond_3
    return-object p2
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 189
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0, p1}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 193
    if-eq v0, p2, :cond_2

    .line 194
    invoke-virtual {p0}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v2, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->UPDATE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v3, Leqz;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4, v1}, Leqz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v2, v3}, Leqw;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    goto :goto_0
.end method

.method public a(ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Leqw;->c:Z

    .line 131
    iget-object v0, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 132
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lera;

    invoke-virtual {v0, p1}, Lera;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Leqz",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqw;->c:Z

    .line 139
    iget-object v0, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 140
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lera;

    invoke-virtual {v0, p1, p2}, Lera;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqw;->c:Z

    .line 147
    iget-object v0, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 148
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lera;

    invoke-virtual {v0, p1, p2}, Lera;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Leqw;->d:Ljava/util/List;

    new-instance v1, Lerb;

    invoke-direct {v1, p1}, Lerb;-><init>(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public final a(Leqx;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leqx",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Leqw;->b:Leqx;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "processor already exist!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Leqw;->b:Leqx;

    .line 59
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lera;

    .line 119
    iget-object v2, v0, Lera;->a:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;

    if-ne v2, p1, :cond_0

    .line 120
    iget-object v1, p0, Leqw;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public final f()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 51
    sget-object v7, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v0, Leqz;

    invoke-virtual {p0}, Leqw;->c()Ljava/util/List;

    move-result-object v5

    move v2, v1

    move-object v4, v3

    move v6, v1

    invoke-direct/range {v0 .. v6}, Leqz;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V

    invoke-virtual {p0, v7, v0}, Leqw;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 52
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 157
    const-string v0, "DataList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load more "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Leqw;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-boolean v0, p0, Leqw;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Leqw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Leqw;->d()V

    .line 161
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 167
    const-string v0, "DataList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Leqw;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-boolean v0, p0, Leqw;->c:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Leqw;->e()V

    .line 171
    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
