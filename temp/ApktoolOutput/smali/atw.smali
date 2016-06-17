.class public abstract Latw;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Laud",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Latw",
            "<TK;TT;>.atx;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Laud;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Latw;->a:Laud;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Latw;->b:Ljava/util/Map;

    .line 61
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Object;)Latx;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Latw",
            "<TK;TT;>.atx;"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v0, Latx;

    invoke-direct {v0, p0, p1}, Latx;-><init>(Latw;Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Latw;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/Object;)Latx;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Latw",
            "<TK;TT;>.atx;"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Latw;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method protected abstract a(Laue;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laue;",
            ")TK;"
        }
    .end annotation
.end method

.method public final a(Lask;Laue;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<TT;>;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p2}, Latw;->a(Laue;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p0, v2}, Latw;->a(Ljava/lang/Object;)Latx;

    move-result-object v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    invoke-direct {p0, v2}, Latw;->b(Ljava/lang/Object;)Latx;

    move-result-object v1

    .line 78
    const/4 v0, 0x1

    .line 80
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v1, p1, p2}, Latx;->a(Lask;Laue;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v1}, Latx;->a()V

    .line 89
    :cond_2
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/Object;Latx;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Latw",
            "<TK;TT;>.atx;)V"
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Latw;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 103
    iget-object v0, p0, Latw;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
