.class public final Lcpf;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/wandoujia/appmanager/AppManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2030
    iput-object p1, p0, Lcpf;->b:Lcom/wandoujia/appmanager/AppManager;

    iput-object p2, p0, Lcpf;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2033
    iget-object v0, p0, Lcpf;->b:Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcpf;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    .line 2034
    iget-object v0, p0, Lcpf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2036
    iget-object v1, p0, Lcpf;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/AppManager;)[B

    move-result-object v3

    monitor-enter v3

    .line 2037
    :try_start_0
    iget-object v1, p0, Lcpf;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->c(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 2038
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2039
    if-eqz v1, :cond_0

    .line 2041
    iget-object v3, p0, Lcpf;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v3}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 2042
    :try_start_1
    iget-object v4, p0, Lcpf;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v4}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2043
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2045
    iget-object v3, p0, Lcpf;->b:Lcom/wandoujia/appmanager/AppManager;

    new-instance v4, Lcpg;

    invoke-direct {v4, v1, v0}, Lcpg;-><init>(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V

    invoke-static {v3, v4}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    goto :goto_0

    .line 2038
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2042
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2043
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2053
    :cond_2
    iget-object v0, p0, Lcpf;->b:Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcpf;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)Z

    .line 2054
    return-void
.end method
