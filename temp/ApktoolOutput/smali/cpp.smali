.class public final Lcpp;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Z

.field private synthetic c:Lcom/wandoujia/appmanager/AppManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/appmanager/AppManager;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcpp;->c:Lcom/wandoujia/appmanager/AppManager;

    iput-object p2, p0, Lcpp;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcpp;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 603
    iget-object v0, p0, Lcpp;->c:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/AppManager;)[B

    move-result-object v1

    monitor-enter v1

    .line 605
    :try_start_0
    iget-object v0, p0, Lcpp;->c:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->c(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcpp;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 606
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->clone()Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    .line 609
    iget-boolean v2, p0, Lcpp;->b:Z

    iput-boolean v2, v0, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored:Z

    .line 610
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->clone()Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v2

    .line 611
    invoke-static {}, Lcpu;->a()Lcpu;

    move-result-object v3

    iget-object v4, p0, Lcpp;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lcpp;->b:Z

    invoke-virtual {v3, v4, v5}, Lcpu;->a(Ljava/lang/String;Z)Z

    .line 612
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 614
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v0, p0, Lcpp;->c:Lcom/wandoujia/appmanager/AppManager;

    new-instance v1, Lcpq;

    invoke-direct {v1, v3}, Lcpq;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    .line 623
    :cond_0
    return-void

    .line 606
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
