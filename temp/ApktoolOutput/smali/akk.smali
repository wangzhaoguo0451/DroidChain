.class public final Lakk;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lakk;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lakn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakn",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private final d:Lcom/facebook/common/references/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/SharedReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lakk;

    sput-object v0, Lakk;->a:Ljava/lang/Class;

    .line 70
    new-instance v0, Lakl;

    invoke-direct {v0}, Lakl;-><init>()V

    sput-object v0, Lakk;->b:Lakn;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/common/references/SharedReference;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lakk;->c:Z

    .line 93
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/SharedReference;

    iput-object v0, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    .line 94
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->b()V

    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lakn;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lakn",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lakk;->c:Z

    .line 99
    new-instance v0, Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/references/SharedReference;-><init>(Ljava/lang/Object;Lakn;)V

    iput-object v0, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    .line 100
    return-void
.end method

.method public static a(Ljava/io/Closeable;)Lakk;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lakk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lakk;

    sget-object v1, Lakk;->b:Lakn;

    invoke-direct {v0, p0, v1}, Lakk;-><init>(Ljava/lang/Object;Lakn;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Lakn;)Lakk;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lakn",
            "<TT;>;)",
            "Lakk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lakk;

    invoke-direct {v0, p0, p1}, Lakk;-><init>(Ljava/lang/Object;Lakn;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lakk",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Lakk",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    .line 251
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    .line 253
    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 255
    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lakk",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p0, :cond_0

    .line 276
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    .line 277
    invoke-static {v0}, Lakk;->c(Lakk;)V

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public static a(Lakk;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakk",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 225
    if-eqz p0, :cond_0

    invoke-direct {p0}, Lakk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lakk;)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lakk",
            "<TT;>;)",
            "Lakk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 235
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lakk;->c()Lakk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lakk;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakk",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 264
    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Lakk;->close()V

    .line 267
    :cond_0
    return-void
.end method

.method private declared-synchronized e()Z
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lakk;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lakk;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 155
    iget-object v0, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lakk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lakk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lakk;->e()Z

    move-result v0

    invoke-static {v0}, Ld;->b(Z)V

    .line 165
    new-instance v0, Lakk;

    iget-object v1, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, v1}, Lakk;-><init>(Lcom/facebook/common/references/SharedReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lakk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lakk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lakk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lakk;

    iget-object v1, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, v1}, Lakk;-><init>(Lcom/facebook/common/references/SharedReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lakk;->b()Lakk;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lakk;->c:Z

    if-eqz v0, :cond_1

    .line 141
    monitor-exit p0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakk;->c:Z

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v1, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v1}, Lcom/facebook/common/references/SharedReference;->c()I

    move-result v0

    if-nez v0, :cond_0

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lcom/facebook/common/references/SharedReference;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/facebook/common/references/SharedReference;->a:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, v1, Lcom/facebook/common/references/SharedReference;->b:Lakn;

    invoke-interface {v1, v0}, Lakn;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/facebook/common/references/SharedReference;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 146
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final declared-synchronized d()I
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lakk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 5

    .prologue
    .line 185
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    iget-boolean v0, p0, Lakk;->c:Z

    if-eqz v0, :cond_0

    .line 187
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 199
    :goto_0
    return-void

    .line 189
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :try_start_3
    sget-object v0, Lakk;->a:Ljava/lang/Class;

    const-string v1, "Finalized without closing: %x %x (type = %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lakk;->d:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v4}, Lcom/facebook/common/references/SharedReference;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lakf;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0}, Lakk;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 198
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
