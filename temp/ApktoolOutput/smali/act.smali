.class public final Lact;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lact;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lact;->c:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public static a()Lact;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lact;->a:Lact;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lact;

    invoke-direct {v0}, Lact;-><init>()V

    .line 35
    sput-object v0, Lact;->a:Lact;

    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    iget-object v1, v1, Lade;->a:Landroid/content/Context;

    iput-object v1, v0, Lact;->b:Landroid/content/Context;

    .line 37
    :cond_0
    sget-object v0, Lact;->a:Lact;

    return-object v0
.end method


# virtual methods
.method protected final a(Lacp;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lacp;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lact;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lact;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    const-string v0, "monitor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lacu;

    iget-object v1, p0, Lact;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lacu;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_0
    if-nez v0, :cond_2

    .line 50
    :goto_1
    monitor-exit p0

    return-void

    .line 41
    :cond_0
    :try_start_1
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lacs;

    iget-object v1, p0, Lact;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lacs;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lact;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 47
    iget-object v2, p0, Lact;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_3
    iget-object v0, p0, Lact;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacp;

    iget-object v1, v0, Lacp;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v2, v0, Lacp;->b:Z

    if-eqz v2, :cond_4

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, v0, Lacp;->b:Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v1, Ljava/lang/Thread;

    iget-object v0, v0, Lacp;->d:Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lact;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 61
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-eqz v0, :cond_0

    .line 56
    :try_start_2
    invoke-virtual {v0}, Lacp;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
