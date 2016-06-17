.class final Lalf;
.super Lalb;
.source "FirstAvailableDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lalb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalb",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Lalb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalb",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:I

.field private synthetic d:Lale;


# direct methods
.method public constructor <init>(Lale;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    iput-object p1, p0, Lalf;->d:Lale;

    invoke-direct {p0}, Lalb;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lalf;->c:I

    .line 77
    iput-object v1, p0, Lalf;->a:Lalb;

    .line 78
    iput-object v1, p0, Lalf;->b:Lalb;

    .line 81
    invoke-direct {p0}, Lalf;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No data source supplier or supplier returned null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lalf;->a(Ljava/lang/Throwable;)Z

    .line 84
    :cond_0
    return-void
.end method

.method static a(Lalb;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lalb;->f()Z

    .line 206
    :cond_0
    return-void
.end method

.method static synthetic a(Lalf;Lalb;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lalf;->c(Lalb;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lalf;->h()Lalb;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lalf;->a(Lalb;)V

    :cond_0
    invoke-direct {p0}, Lalf;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lalb;->d()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lalf;->a(Ljava/lang/Throwable;)Z

    :cond_1
    return-void
.end method

.method private declared-synchronized b(Lalb;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lalf;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    monitor-exit p0

    return v0

    .line 143
    :cond_0
    :try_start_1
    iput-object p1, p0, Lalf;->a:Lalb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Lalb;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lalf;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lalf;->a:Lalb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    monitor-exit p0

    return v0

    .line 151
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lalf;->a:Lalb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lalf;->j()Lakd;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lakd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalb;

    .line 122
    :goto_0
    invoke-direct {p0, v0}, Lalf;->b(Lalb;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 123
    new-instance v2, Lalg;

    invoke-direct {v2, p0, v1}, Lalg;-><init>(Lalf;B)V

    invoke-static {}, Lajm;->a()Lajm;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lalb;->a(Lald;Ljava/util/concurrent/Executor;)V

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_1
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v0}, Lalf;->a(Lalb;)V

    move v0, v1

    .line 127
    goto :goto_1
.end method

.method private declared-synchronized j()Lakd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lakd",
            "<",
            "Lalb",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lalf;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lalf;->c:I

    iget-object v1, p0, Lalf;->d:Lale;

    iget-object v1, v1, Lale;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lalf;->d:Lale;

    iget-object v0, v0, Lale;->a:Ljava/util/List;

    iget v1, p0, Lalf;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lalf;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lalf;->h()Lalb;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lalb;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lalf;->h()Lalb;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lalb;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Z
    .locals 3

    .prologue
    .line 103
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-super {p0}, Lalb;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    monitor-exit p0

    .line 116
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lalf;->a:Lalb;

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lalf;->a:Lalb;

    .line 111
    iget-object v1, p0, Lalf;->b:Lalb;

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Lalf;->b:Lalb;

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-static {v1}, Lalf;->a(Lalb;)V

    .line 115
    invoke-static {v0}, Lalf;->a(Lalb;)V

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized h()Lalb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lalf;->b:Lalb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
