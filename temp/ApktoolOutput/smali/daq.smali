.class public final Ldaq;
.super Ljava/lang/Object;
.source "ImageManager.java"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/lang/String;

.field final c:Ldbd;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;

.field private synthetic g:Ldaa;


# direct methods
.method constructor <init>(Ldaa;Ljava/lang/String;Ljava/lang/String;Ldbd;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 931
    iput-object p1, p0, Ldaq;->g:Ldaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldaq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 925
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldaq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 932
    iput-object p2, p0, Ldaq;->b:Ljava/lang/String;

    .line 933
    iput-object p3, p0, Ldaq;->e:Ljava/lang/String;

    .line 934
    iput-object p4, p0, Ldaq;->c:Ldbd;

    .line 935
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 956
    :try_start_0
    iget-object v1, p0, Ldaq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_0
    :try_start_1
    iget-object v0, p0, Ldaq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Ldaq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 962
    :goto_1
    iget-object v0, p0, Ldaq;->f:Landroid/graphics/Bitmap;

    return-object v0

    .line 960
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Ldaq;->f:Landroid/graphics/Bitmap;

    .line 939
    iget-object v0, p0, Ldaq;->c:Ldbd;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Ldaq;->c:Ldbd;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ldbd;->a(Landroid/graphics/Bitmap;Z)V

    .line 942
    :cond_0
    iget-object v1, p0, Ldaq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 943
    :try_start_0
    iget-object v0, p0, Ldaq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 944
    iget-object v0, p0, Ldaq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 945
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Ldaq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Ldaq;->g:Ldaa;

    iget-object v0, v0, Ldaa;->f:Ljava/util/HashMap;

    iget-object v1, p0, Ldaq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldap;

    .line 986
    if-eqz v0, :cond_2

    .line 987
    invoke-virtual {v0, p0}, Ldap;->b(Ldaq;)Z

    move-result v0

    .line 988
    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Ldaq;->g:Ldaa;

    iget-object v0, v0, Ldaa;->f:Ljava/util/HashMap;

    iget-object v1, p0, Ldaq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 993
    :cond_2
    iget-object v0, p0, Ldaq;->g:Ldaa;

    iget-object v0, v0, Ldaa;->h:Ljava/util/HashMap;

    iget-object v1, p0, Ldaq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldap;

    .line 994
    if-eqz v0, :cond_4

    .line 995
    invoke-virtual {v0, p0}, Ldap;->b(Ldaq;)Z

    move-result v0

    .line 996
    if-eqz v0, :cond_3

    .line 997
    iget-object v0, p0, Ldaq;->g:Ldaa;

    iget-object v0, v0, Ldaa;->h:Ljava/util/HashMap;

    iget-object v1, p0, Ldaq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    :cond_3
    :goto_1
    iget-object v0, p0, Ldaq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1001
    :cond_4
    iget-object v0, p0, Ldaq;->g:Ldaa;

    iget-object v0, v0, Ldaa;->i:Ljava/util/HashMap;

    iget-object v1, p0, Ldaq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldap;

    .line 1002
    if-eqz v0, :cond_3

    .line 1003
    invoke-virtual {v0, p0}, Ldap;->b(Ldaq;)Z

    .line 1004
    iget-object v0, v0, Ldap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1005
    iget-object v0, p0, Ldaq;->g:Ldaa;

    iget-object v0, v0, Ldaa;->i:Ljava/util/HashMap;

    iget-object v1, p0, Ldaq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
