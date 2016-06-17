.class public final Layt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/zze;

.field private synthetic b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0

    iput-object p1, p0, Layt;->a:Lcom/google/android/gms/common/api/zze;

    iput-object p2, p0, Layt;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v1, p0, Layt;->a:Lcom/google/android/gms/common/api/zze;

    iget-object v0, p0, Layt;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    iget-object v2, v0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->c:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v3, v1, Lcom/google/android/gms/common/api/zze;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/zze;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/common/api/zze;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/IAccountAccessor$zza;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/common/api/zze;->e:Z

    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->d:Z

    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->e:Z

    iget-boolean v0, v1, Lcom/google/android/gms/common/api/zze;->e:Z

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/google/android/gms/common/api/zze;->d:I

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput v0, v1, Lcom/google/android/gms/common/api/zze;->c:I

    iget-object v0, v1, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/common/api/zze;->d:I

    iget-object v0, v1, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg;

    iget-object v3, v1, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v3, v3, Laf;->s:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zze;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, v1, Lcom/google/android/gms/common/api/zze;->c:I

    iget-object v0, v1, Lcom/google/android/gms/common/api/zze;->a:Laf;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zze;->g()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Laf;->t:Ljava/util/Set;

    new-instance v0, Layr;

    invoke-direct {v0, v1}, Layr;-><init>(Lcom/google/android/gms/common/api/zze;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/zze;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_2
    iget-object v3, v1, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v3, v3, Laf;->r:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/zze;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zze;->f()V

    iget v0, v1, Lcom/google/android/gms/common/api/zze;->d:I

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zze;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/common/api/zze;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/zze;->b(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
