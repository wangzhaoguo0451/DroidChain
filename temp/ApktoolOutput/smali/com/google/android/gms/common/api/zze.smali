.class public final Lcom/google/android/gms/common/api/zze;
.super Ljava/lang/Object;

# interfaces
.implements Layw;


# instance fields
.field public final a:Laf;

.field public final b:Ljava/util/concurrent/locks/Lock;

.field public c:I

.field public d:I

.field public e:Z

.field private final f:Landroid/content/Context;

.field private g:Lcom/google/android/gms/common/ConnectionResult;

.field private h:Z

.field private final i:Landroid/os/Bundle;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lg;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private final l:Laf;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laf",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laf;Laf;Ljava/util/Map;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf;",
            "Laf;",
            "Ljava/util/Map",
            "<",
            "Laf",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->c:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->h:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zze;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zze;->j:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zze;->l:Laf;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zze;->m:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zze;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/common/api/zze;->f:Landroid/content/Context;

    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STEP_GETTING_SERVICE_BINDINGS"

    goto :goto_0

    :pswitch_1
    const-string v0, "STEP_VALIDATING_ACCOUNT"

    goto :goto_0

    :pswitch_2
    const-string v0, "STEP_AUTHENTICATING"

    goto :goto_0

    :pswitch_3
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->n:Lazu;

    iput-boolean v3, v0, Lazu;->e:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/zze;->h:Z

    iput-object v7, p0, Lcom/google/android/gms/common/api/zze;->g:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/common/api/zze;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->k:I

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/zze;->e:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->f:Landroid/content/Context;

    invoke-static {v0}, Layk;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v0, v7}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->q:Layv;

    new-instance v2, Layq;

    invoke-direct {v2, p0, v1}, Layq;-><init>(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Layv;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v1, v1, Laf;->r:Ljava/util/Map;

    const-string v2, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey"

    invoke-static {v4, v2}, Lg;->a(ZLjava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layl;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->m:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    iget-object v0, v0, Laf;->k:Ldd;

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    const-string v2, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v2}, Lg;->a(ZLjava/lang/Object;)V

    new-instance v0, Lau;

    invoke-direct {v0, p0}, Lau;-><init>(Lcom/google/android/gms/common/api/zze;)V

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->d:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layl;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final a(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    invoke-interface {v0}, Ldd;->i()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    invoke-virtual {v0}, Laf;->d()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->g:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/zze;->h:Z

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zze;->g:Lcom/google/android/gms/common/ConnectionResult;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    invoke-virtual {v0}, Laf;->e()V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/zze;->k:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/api/zze;->k:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->h:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/zze;->g:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/zze;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    invoke-virtual {v0}, Laf;->i()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v1, v0, Laf;->n:Lazu;

    iget-object v0, v1, Lazu;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lazu;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lazu;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lazu;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layo;

    iget-boolean v5, v1, Lazu;->e:Z

    if-eqz v5, :cond_1

    iget-object v5, v1, Lazu;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eq v5, v3, :cond_2

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->n:Lazu;

    invoke-virtual {v0}, Lazu;->a()V

    return-void

    :cond_2
    :try_start_1
    iget-object v5, v1, Lazu;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, p1}, Layo;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final b(I)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/zze;->c:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleApiClient connecting is in step "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/common/api/zze;->c:I

    invoke-static {v2}, Lcom/google/android/gms/common/api/zze;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but received callback for step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/api/zze;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/zze;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTING"

    return-object v0
.end method

.method public final d()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/api/zze;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/zze;->d:I

    iget v1, p0, Lcom/google/android/gms/common/api/zze;->d:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/zze;->d:I

    if-gez v1, :cond_1

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/zze;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->g:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->g:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/zze;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zze;->g()Ljava/util/Set;

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->c:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->d:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v4, v4, Laf;->s:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zze;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v4, Laf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {v4}, Laf;->i()Z

    new-instance v0, Layp;

    invoke-direct {v0, v4}, Layp;-><init>(Laf;)V

    iput-object v0, v4, Laf;->w:Layw;

    iget-object v0, v4, Laf;->w:Layw;

    invoke-interface {v0}, Layw;->a()V

    iget-object v0, v4, Laf;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v4, Laf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg;

    iget-object v5, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v5, v5, Laf;->r:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, v4, Laf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->h:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/zze;->h:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/zze;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v4, v0, Laf;->n:Lazu;

    iget-object v5, v4, Lazu;->i:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-boolean v0, v4, Lazu;->g:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Lg;->a(Z)V

    iget-object v0, v4, Lazu;->h:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lazu;->g:Z

    iget-object v0, v4, Lazu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    invoke-static {v0}, Lg;->a(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, v4, Lazu;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, v4, Lazu;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layn;

    iget-boolean v8, v4, Lazu;->e:Z

    if-eqz v8, :cond_7

    iget-object v8, v4, Lazu;->a:Lazv;

    invoke-interface {v8}, Lazv;->v()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v4, Lazu;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v8, v6, :cond_7

    iget-object v8, v4, Lazu;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v0}, Layn;->n()V

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    :try_start_2
    iget-object v0, v4, Lazu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, v4, Lazu;->g:Z

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v4, v4, Laf;->r:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v0, v0, Laf;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v2, v2, Laf;->s:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v2, v2, Laf;->s:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->l:Laf;

    iget-object v0, v0, Laf;->A:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->l:Laf;

    iget-object v2, v0, Laf;->B:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zze;->a:Laf;

    iget-object v4, v4, Laf;->s:Ljava/util/Map;

    const/4 v5, 0x0

    const-string v6, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey"

    invoke-static {v5, v6}, Lg;->a(ZLjava/lang/Object;)V

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf;

    iget-object v0, v0, Laf;->C:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
