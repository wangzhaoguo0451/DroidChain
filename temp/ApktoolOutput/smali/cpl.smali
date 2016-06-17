.class public final Lcpl;
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
    .line 2119
    iput-object p1, p0, Lcpl;->b:Lcom/wandoujia/appmanager/AppManager;

    iput-object p2, p0, Lcpl;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2122
    iget-object v0, p0, Lcpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2124
    iget-object v1, p0, Lcpl;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/AppManager;)[B

    move-result-object v2

    monitor-enter v2

    .line 2125
    :try_start_0
    iget-object v1, p0, Lcpl;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->c(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 2126
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2128
    if-eqz v1, :cond_2

    .line 2129
    iget-object v2, p0, Lcpl;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v2}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 2130
    :try_start_1
    iget-object v2, p0, Lcpl;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v2}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 2131
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2134
    :goto_2
    iget-object v5, p0, Lcpl;->b:Lcom/wandoujia/appmanager/AppManager;

    new-instance v6, Lcpm;

    invoke-direct {v6, v0, v1, v2}, Lcpm;-><init>(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V

    invoke-static {v5, v6}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    goto :goto_0

    .line 2126
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    move v2, v3

    .line 2130
    goto :goto_1

    .line 2131
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2141
    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_2
.end method
