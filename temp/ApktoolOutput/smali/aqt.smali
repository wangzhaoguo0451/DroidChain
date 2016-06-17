.class public final Laqt;
.super Laqv;
.source "CloseableAnimatedImage.java"


# instance fields
.field private a:Lano;


# direct methods
.method public constructor <init>(Lano;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Laqv;-><init>()V

    .line 24
    iput-object p1, p0, Laqt;->a:Lano;

    .line 25
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Laqt;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Laqt;->a:Lano;

    iget-object v0, v0, Lano;->a:Lanm;

    invoke-interface {v0}, Lanm;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Laqt;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Laqt;->a:Lano;

    iget-object v0, v0, Lano;->a:Lanm;

    invoke-interface {v0}, Lanm;->b()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqt;->a:Lano;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Laqt;->a:Lano;

    if-nez v0, :cond_0

    .line 42
    monitor-exit p0

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Laqt;->a:Lano;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Laqt;->a:Lano;

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v0}, Lano;->b()V

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d()I
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Laqt;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Laqt;->a:Lano;

    iget-object v0, v0, Lano;->a:Lanm;

    invoke-interface {v0}, Lanm;->f()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized f()Lano;
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqt;->a:Lano;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
