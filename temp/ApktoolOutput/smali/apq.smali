.class public Lapq;
.super Ljava/lang/Object;
.source "StagingArea.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laip;",
            "Laqx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lapq;

    sput-object v0, Lapq;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lapq;->b:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public static a()Lapq;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lapq;

    invoke-direct {v0}, Lapq;-><init>()V

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    sget-object v0, Lapq;->a:Ljava/lang/Class;

    const-string v1, "Count = %d"

    iget-object v2, p0, Lapq;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Laip;)Laqx;
    .locals 6
    .parameter

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lapq;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqx;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    invoke-static {v0}, Laqx;->e(Laqx;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lapq;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lapq;->a:Ljava/lang/Class;

    const-string v2, "Found closed reference %d for key %s (%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lakf;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 115
    :cond_1
    :try_start_2
    invoke-static {v0}, Laqx;->a(Laqx;)Laqx;

    move-result-object v1

    .line 116
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Laip;Laqx;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p2}, Laqx;->e(Laqx;)Z

    move-result v0

    invoke-static {v0}, Ld;->a(Z)V

    .line 54
    iget-object v0, p0, Lapq;->b:Ljava/util/Map;

    invoke-static {p2}, Laqx;->a(Laqx;)Laqx;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqx;

    .line 55
    invoke-static {v0}, Laqx;->d(Laqx;)V

    .line 56
    invoke-direct {p0}, Lapq;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Laip;Laqx;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Laqx;->e(Laqx;)Z

    move-result v0

    invoke-static {v0}, Ld;->a(Z)V

    .line 70
    iget-object v0, p0, Lapq;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    if-nez v0, :cond_0

    move v0, v1

    .line 90
    :goto_0
    monitor-exit p0

    return v0

    .line 76
    :cond_0
    :try_start_1
    iget-object v2, v0, Laqx;->a:Lakk;

    invoke-static {v2}, Lakk;->b(Lakk;)Lakk;

    move-result-object v2

    .line 77
    iget-object v3, p2, Laqx;->a:Lakk;

    invoke-static {v3}, Lakk;->b(Lakk;)Lakk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 79
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lakk;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lakk;->a()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 80
    :cond_1
    :try_start_3
    invoke-static {v3}, Lakk;->c(Lakk;)V

    .line 85
    invoke-static {v2}, Lakk;->c(Lakk;)V

    .line 86
    invoke-static {v0}, Laqx;->d(Laqx;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v1

    goto :goto_0

    .line 82
    :cond_2
    :try_start_4
    iget-object v1, p0, Lapq;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :try_start_5
    invoke-static {v3}, Lakk;->c(Lakk;)V

    .line 85
    invoke-static {v2}, Lakk;->c(Lakk;)V

    .line 86
    invoke-static {v0}, Laqx;->d(Laqx;)V

    .line 89
    invoke-direct {p0}, Lapq;->b()V

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    invoke-static {v3}, Lakk;->c(Lakk;)V

    .line 85
    invoke-static {v2}, Lakk;->c(Lakk;)V

    .line 86
    invoke-static {v0}, Laqx;->d(Laqx;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 66
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
