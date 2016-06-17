.class Lcom/wandoujia/launcher_search/local_search/SearchMemoryIndexer$PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchMemoryIndexer.java"


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 87
    iget-object v0, v5, Laf;->H:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    new-instance v4, Lekp;

    invoke-direct {v4, v6}, Lekp;-><init>(B)V

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lekp;->a:Ljava/lang/String;

    iget-object v0, v4, Lekp;->a:Ljava/lang/String;

    invoke-static {v0}, Ld;->S(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v4, Lekp;->a:Ljava/lang/String;

    invoke-static {v0}, Ld;->T(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v5, Laf;->I:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v2, v0, Laf;->I:Ljava/util/List;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
