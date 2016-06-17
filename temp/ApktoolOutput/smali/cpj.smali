.class public final Lcpj;
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
    .line 2096
    iput-object p1, p0, Lcpj;->b:Lcom/wandoujia/appmanager/AppManager;

    iput-object p2, p0, Lcpj;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2099
    iget-object v0, p0, Lcpj;->b:Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcpj;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    .line 2100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2101
    iget-object v0, p0, Lcpj;->a:Ljava/util/List;

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

    .line 2103
    iget-object v1, p0, Lcpj;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/AppManager;)[B

    move-result-object v4

    monitor-enter v4

    .line 2104
    :try_start_0
    iget-object v1, p0, Lcpj;->b:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v1}, Lcom/wandoujia/appmanager/AppManager;->c(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 2105
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    if-eqz v1, :cond_0

    .line 2107
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2110
    :cond_1
    iget-object v0, p0, Lcpj;->b:Lcom/wandoujia/appmanager/AppManager;

    new-instance v1, Lcpk;

    invoke-direct {v1}, Lcpk;-><init>()V

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    .line 2116
    return-void
.end method
