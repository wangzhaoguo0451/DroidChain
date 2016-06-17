.class public final Lcph;
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
    .line 2059
    iput-object p1, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    iput-object p2, p0, Lcph;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 2062
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2063
    iget-object v0, p0, Lcph;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2065
    iget-object v1, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/AppManager;)[B

    move-result-object v4

    monitor-enter v4

    .line 2066
    :try_start_0
    iget-object v1, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->c(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 2067
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2068
    if-eqz v1, :cond_0

    .line 2069
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->clone()Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2067
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2072
    :cond_1
    iget-object v0, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcph;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    .line 2073
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 2075
    iget-object v1, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/AppManager;)[B

    move-result-object v2

    monitor-enter v2

    .line 2076
    :try_start_2
    iget-object v1, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->c(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 2077
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2078
    if-eqz v1, :cond_2

    .line 2080
    iget-object v2, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v2}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 2081
    :try_start_3
    iget-object v2, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v2}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 2082
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2084
    iget-object v4, p0, Lcph;->b:Lcom/wandoujia/appmanager/AppManager;

    new-instance v5, Lcpi;

    invoke-direct {v5, v1, v0, v2}, Lcpi;-><init>(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V

    invoke-static {v4, v5}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    goto :goto_1

    .line 2077
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2081
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 2082
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 2092
    :cond_4
    return-void
.end method
