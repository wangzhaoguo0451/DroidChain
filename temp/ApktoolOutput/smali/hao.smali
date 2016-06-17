.class final Lhao;
.super Ljava/lang/Object;
.source "CommonDataContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lham;


# direct methods
.method constructor <init>(Lham;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lhao;->a:Lham;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 146
    iget-object v0, p0, Lhao;->a:Lham;

    iget-object v2, v0, Lham;->p:Lcom/wandoujia/ripple_framework/AppMd5Manager;

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const-string v1, "app_md5s"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->b:Landroid/content/SharedPreferences;

    iget-object v0, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lhaj;->a(Ljava/lang/String;)Lhaj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v1, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_1
    iget-object v0, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v2, Lcom/wandoujia/ripple_framework/AppMd5Manager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    iget-object v0, p0, Lhao;->a:Lham;

    iget-object v0, v0, Lham;->k:Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->b()V

    .line 148
    return-void

    .line 146
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
