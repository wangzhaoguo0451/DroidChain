.class public final Layp;
.super Ljava/lang/Object;

# interfaces
.implements Layw;


# instance fields
.field private final a:Laf;


# direct methods
.method public constructor <init>(Laf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layp;->a:Laf;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Layp;->a:Laf;

    iget-object v0, v0, Laf;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Layp;->a:Laf;

    iget-object v0, v0, Laf;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    iget-object v1, p0, Layp;->a:Laf;

    iget-object v1, v1, Laf;->x:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Layp;->a:Laf;

    invoke-interface {v0}, Ldd;->h()Lg;

    move-result-object v2

    iget-object v1, v1, Laf;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layl;

    const-string v2, "Appropriate Api was not requested."

    invoke-static {v1, v2}, Lg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Layl;->v()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Layp;->a:Laf;

    iget-object v1, v1, Laf;->s:Ljava/util/Map;

    invoke-interface {v0}, Ldd;->h()Lg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Layp;->a:Laf;

    invoke-virtual {v2}, Laf;->d()V

    iget-object v2, p0, Layp;->a:Laf;

    iget-object v2, v2, Laf;->s:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v2, p0, Layp;->a:Laf;

    invoke-virtual {v2}, Laf;->e()V

    if-nez v0, :cond_4

    iget-object v0, p0, Layp;->a:Laf;

    iget-object v2, v0, Laf;->n:Lazu;

    iget-object v0, v2, Lazu;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v2, Lazu;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v2, Lazu;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v2, Lazu;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v2, Lazu;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layn;

    iget-boolean v5, v2, Lazu;->e:Z

    if-eqz v5, :cond_3

    iget-object v5, v2, Lazu;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v5, v3, :cond_3

    iget-object v5, v2, Lazu;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v2, p0, Layp;->a:Laf;

    iget-object v2, v2, Laf;->x:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x8

    const-string v5, "The connection to Google Play services was lost"

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, v2, Lazu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lazu;->g:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    iget-object v0, p0, Layp;->a:Laf;

    iget-object v0, v0, Laf;->n:Lazu;

    invoke-virtual {v0}, Lazu;->a()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTED"

    return-object v0
.end method
