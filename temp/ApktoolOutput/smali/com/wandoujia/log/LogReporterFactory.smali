.class public Lcom/wandoujia/log/LogReporterFactory;
.super Ljava/lang/Object;
.source "LogReporterFactory.java"


# static fields
.field private static logReporterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/log/LogReporter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static logReporterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/log/LogReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getLogReporter()Lcom/wandoujia/log/LogReporter;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/wandoujia/log/LogReporterFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/log/LogReporter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLogReporter(Ljava/lang/String;)Lcom/wandoujia/log/LogReporter;
    .locals 2
    .parameter

    .prologue
    .line 61
    const-class v1, Lcom/wandoujia/log/LogReporterFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/log/LogReporter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized newLogReporter(Landroid/content/Context;Lcom/wandoujia/log/LogConfiguration;)Lcom/wandoujia/log/LogReporter;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 24
    const-class v1, Lcom/wandoujia/log/LogReporterFactory;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 25
    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/wandoujia/log/LogConfiguration;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/wandoujia/log/LogConfiguration;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/wandoujia/log/LogConfiguration;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/log/LogReporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    monitor-exit v1

    return-object v0

    .line 35
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/wandoujia/log/LogConfiguration;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v4, Lemr;

    invoke-direct {v4, v2, v3}, Lemr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    new-instance v5, Lcom/wandoujia/log/LogSender;

    invoke-direct {v5, v2, v4, p1}, Lcom/wandoujia/log/LogSender;-><init>(Landroid/content/Context;Lemr;Lcom/wandoujia/log/LogConfiguration;)V

    .line 38
    new-instance v0, Lcom/wandoujia/log/LogReporter;

    invoke-direct {v0, v2, v4, p1, v5}, Lcom/wandoujia/log/LogReporter;-><init>(Landroid/content/Context;Lemr;Lcom/wandoujia/log/LogConfiguration;Lcom/wandoujia/log/LogSender;)V

    .line 39
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/wandoujia/log/LogReporterFactory;->logReporterRef:Ljava/lang/ref/WeakReference;

    .line 40
    sget-object v2, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    .line 43
    :cond_1
    sget-object v2, Lcom/wandoujia/log/LogReporterFactory;->logReporterMap:Ljava/util/Map;

    sget-object v4, Lcom/wandoujia/log/LogReporterFactory;->logReporterRef:Ljava/lang/ref/WeakReference;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
