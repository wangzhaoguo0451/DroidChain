.class public final Lavb;
.super Ljava/lang/Object;


# instance fields
.field private a:Lbaq;

.field private b:Lcom/google/android/gms/internal/zzav;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Lavd;

.field private final f:Landroid/content/Context;

.field private g:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lavb;->d:Ljava/lang/Object;

    invoke-static {p1}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lavb;->f:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lavb;->c:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lavb;->g:J

    return-void
.end method

.method public static a(Landroid/content/Context;)Lavc;
    .locals 2

    new-instance v1, Lavb;

    invoke-direct {v1, p0}, Lavb;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {v1}, Lavb;->b()V

    invoke-direct {v1}, Lavb;->c()Lavc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lavb;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lavb;->a()V

    throw v0
.end method

.method private static a(Lbaq;)Lcom/google/android/gms/internal/zzav;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BlockingServiceConnection.getService() called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lbaq;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbaq;->a:Z

    iget-object v0, p0, Lbaq;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzav$zza;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzav;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lbaq;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Layk;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Lbaq;

    invoke-direct {v0}, Lbaq;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lbap;->a()Lbap;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lbap;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 1

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lg;->k(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lavb;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lavb;->a()V

    :cond_0
    iget-object v0, p0, Lavb;->f:Landroid/content/Context;

    invoke-static {v0}, Lavb;->b(Landroid/content/Context;)Lbaq;

    move-result-object v0

    iput-object v0, p0, Lavb;->a:Lbaq;

    iget-object v0, p0, Lavb;->a:Lbaq;

    invoke-static {v0}, Lavb;->a(Lbaq;)Lcom/google/android/gms/internal/zzav;

    move-result-object v0

    iput-object v0, p0, Lavb;->b:Lcom/google/android/gms/internal/zzav;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lavb;->c:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()Lavc;
    .locals 6

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lg;->k(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lavb;->c:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lavb;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lavb;->e:Lavd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavb;->e:Lavd;

    iget-boolean v0, v0, Lavd;->b:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient is not connected."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0}, Lavb;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-boolean v0, p0, Lavb;->c:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lavb;->a:Lbaq;

    invoke-static {v0}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lavb;->b:Lcom/google/android/gms/internal/zzav;

    invoke-static {v0}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v0, Lavc;

    iget-object v1, p0, Lavb;->b:Lcom/google/android/gms/internal/zzav;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzav;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lavb;->b:Lcom/google/android/gms/internal/zzav;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzav;->a(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lavc;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v1, p0, Lavb;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lavb;->e:Lavd;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lavb;->e:Lavd;

    iget-object v2, v2, Lavd;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v2, p0, Lavb;->e:Lavd;

    invoke-virtual {v2}, Lavd;->join()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_3
    :goto_0
    :try_start_a
    iget-wide v2, p0, Lavb;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    new-instance v2, Lavd;

    iget-wide v4, p0, Lavb;->g:J

    invoke-direct {v2, p0, v4, v5}, Lavd;-><init>(Lavb;J)V

    iput-object v2, p0, Lavb;->e:Lavd;

    :cond_4
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    return-object v0

    :catch_1
    move-exception v0

    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :catch_2
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lg;->k(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lavb;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavb;->a:Lbaq;

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lavb;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lbap;->a()Lbap;

    iget-object v0, p0, Lavb;->f:Landroid/content/Context;

    iget-object v1, p0, Lavb;->a:Lbaq;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lavb;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lavb;->b:Lcom/google/android/gms/internal/zzav;

    const/4 v0, 0x0

    iput-object v0, p0, Lavb;->a:Lbaq;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lavb;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
