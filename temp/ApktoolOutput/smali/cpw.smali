.class public final Lcpw;
.super Ljava/lang/Object;
.source "InstallCallback.java"


# instance fields
.field public synthetic a:Lcom/wandoujia/appmanager/AppManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/appmanager/AppManager;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    new-instance v1, Lcou;

    invoke-direct {v1, p1}, Lcou;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    .line 177
    return-void

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    new-instance v1, Lcov;

    invoke-direct {v1, p1, p2}, Lcov;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    .line 190
    return-void

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    new-instance v1, Lcox;

    invoke-direct {v1, p1}, Lcox;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    .line 217
    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    new-instance v1, Lcow;

    invoke-direct {v1, p1, p2}, Lcow;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    .line 204
    return-void

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;)Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/appmanager/AppManager$AppState;->UNINSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 225
    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcpw;->a:Lcom/wandoujia/appmanager/AppManager;

    new-instance v1, Lcoy;

    invoke-direct {v1}, Lcoy;-><init>()V

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Lcpt;)V

    goto :goto_0
.end method
