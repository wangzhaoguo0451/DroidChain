.class public final Layq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic b:Lcom/google/android/gms/common/api/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Layq;->b:Lcom/google/android/gms/common/api/zze;

    iput-object p2, p0, Layq;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Layq;->b:Lcom/google/android/gms/common/api/zze;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zze;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Layq;->b:Lcom/google/android/gms/common/api/zze;

    iget-object v1, p0, Layq;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zze;->b(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Layq;->b:Lcom/google/android/gms/common/api/zze;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zze;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Layq;->b:Lcom/google/android/gms/common/api/zze;

    iget-object v1, v1, Lcom/google/android/gms/common/api/zze;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
