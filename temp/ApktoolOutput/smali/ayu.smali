.class public final Layu;
.super Ljava/lang/Object;

# interfaces
.implements Layw;


# instance fields
.field private final a:Laf;


# direct methods
.method public constructor <init>(Laf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layu;->a:Laf;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Layu;->a:Laf;

    iget-object v0, v0, Laf;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Layu;->a:Laf;

    iget-object v0, v0, Laf;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Layu;->a:Laf;

    iget-object v0, v0, Laf;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Layu;->a:Laf;

    invoke-virtual {v0}, Laf;->d()V

    iget-object v0, p0, Layu;->a:Laf;

    iget-object v0, v0, Laf;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v1, p0, Layu;->a:Laf;

    iget-object v0, v1, Laf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/zze;

    iget-object v2, v1, Laf;->u:Laf;

    iget-object v3, v1, Laf;->v:Ljava/util/Map;

    iget-object v4, v1, Laf;->l:Ljava/util/concurrent/locks/Lock;

    iget-object v5, v1, Laf;->o:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/zze;-><init>(Laf;Laf;Ljava/util/Map;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, v1, Laf;->w:Layw;

    iget-object v0, v1, Laf;->w:Layw;

    invoke-interface {v0}, Layw;->a()V

    iget-object v0, v1, Laf;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Laf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Laf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "DISCONNECTED"

    return-object v0
.end method
