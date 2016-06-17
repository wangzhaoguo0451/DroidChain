.class final Lfsj;
.super Ljava/lang/Object;
.source "BaseFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lfsr;

.field private synthetic d:Z

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Lfsi;


# direct methods
.method constructor <init>(Lfsi;IZILfsr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lfsj;->f:Lfsi;

    iput p2, p0, Lfsj;->a:I

    iput-boolean p3, p0, Lfsj;->d:Z

    iput p4, p0, Lfsj;->b:I

    iput-object p5, p0, Lfsj;->c:Lfsr;

    iput-object p6, p0, Lfsj;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    :try_start_0
    iget v2, p0, Lfsj;->a:I

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lfsj;->d:Z

    if-eqz v2, :cond_5

    .line 68
    iget-object v2, p0, Lfsj;->f:Lfsi;

    iget v3, p0, Lfsj;->a:I

    iget v4, p0, Lfsj;->b:I

    invoke-virtual {v2, v3, v4}, Lfsi;->e(II)Ljava/util/List;

    move-result-object v3

    .line 70
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iget v4, p0, Lfsj;->b:I

    if-ge v2, v4, :cond_6

    .line 71
    iget v0, p0, Lfsj;->a:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 72
    iget v2, p0, Lfsj;->b:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    .line 73
    iget-object v4, p0, Lfsj;->f:Lfsi;

    invoke-virtual {v4, v0, v2}, Lfsi;->b(II)Lfss;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    iget-object v2, v0, Lfss;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, v0, Lfss;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move-object v2, v0

    .line 80
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    if-nez v2, :cond_3

    .line 82
    new-instance v0, Lfss;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lfss;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 83
    const/4 v1, 0x0

    .line 92
    :goto_1
    iget-object v2, p0, Lfsj;->c:Lfsr;

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lfsj;->f:Lfsi;

    iget-object v2, v2, Lfsi;->c:Landroid/os/Handler;

    new-instance v3, Lfsk;

    invoke-direct {v3, p0, v0}, Lfsk;-><init>(Lfsj;Lfss;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    if-eqz v1, :cond_2

    .line 102
    :try_start_1
    iget-object v0, p0, Lfsj;->f:Lfsi;

    iget v1, p0, Lfsj;->a:I

    iget v2, p0, Lfsj;->b:I

    invoke-virtual {v0, v1, v2}, Lfsi;->a(II)Ljava/util/List;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lfsj;->c:Lfsr;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lfsj;->f:Lfsi;

    iget-object v1, v1, Lfsi;->c:Landroid/os/Handler;

    new-instance v2, Lfsl;

    invoke-direct {v2, p0, v0}, Lfsl;-><init>(Lfsj;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :cond_2
    :goto_2
    iget-object v1, p0, Lfsj;->f:Lfsi;

    monitor-enter v1

    .line 146
    :try_start_2
    iget-object v0, p0, Lfsj;->f:Lfsi;

    iget-object v0, v0, Lfsi;->d:Ljava/util/Set;

    iget-object v2, p0, Lfsj;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lfsj;->f:Lfsi;

    iget-object v0, v0, Lfsi;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 85
    :cond_3
    :try_start_3
    new-instance v0, Lfss;

    iget-object v1, v2, Lfss;->b:Ljava/lang/Long;

    iget-object v4, v2, Lfss;->c:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v1, v4}, Lfss;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 87
    iget-object v1, v2, Lfss;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 90
    :cond_4
    new-instance v0, Lfss;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lfss;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lfsj;->f:Lfsi;

    monitor-enter v1

    .line 146
    :try_start_4
    iget-object v2, p0, Lfsj;->f:Lfsi;

    iget-object v2, v2, Lfsi;->d:Ljava/util/Set;

    iget-object v3, p0, Lfsj;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Lfsj;->f:Lfsi;

    iget-object v2, v2, Lfsi;->e:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_5
    iget-object v1, p0, Lfsj;->c:Lfsr;

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lfsj;->f:Lfsi;

    iget-object v1, v1, Lfsi;->c:Landroid/os/Handler;

    new-instance v2, Lfsm;

    invoke-direct {v2, p0, v0}, Lfsm;-><init>(Lfsj;Ljava/util/concurrent/ExecutionException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 124
    :cond_5
    :try_start_6
    iget-object v0, p0, Lfsj;->f:Lfsi;

    iget v1, p0, Lfsj;->a:I

    iget v2, p0, Lfsj;->b:I

    invoke-virtual {v0, v1, v2}, Lfsi;->d(II)Ljava/util/List;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lfsj;->c:Lfsr;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lfsj;->f:Lfsi;

    iget-object v1, v1, Lfsi;->c:Landroid/os/Handler;

    new-instance v2, Lfsn;

    invoke-direct {v2, p0, v0}, Lfsn;-><init>(Lfsj;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 133
    :catch_1
    move-exception v0

    .line 134
    :try_start_7
    iget-object v1, p0, Lfsj;->c:Lfsr;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lfsj;->f:Lfsi;

    iget-object v1, v1, Lfsi;->c:Landroid/os/Handler;

    new-instance v2, Lfso;

    invoke-direct {v2, p0, v0}, Lfso;-><init>(Lfsj;Ljava/util/concurrent/ExecutionException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 148
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_6
    move-object v2, v0

    goto/16 :goto_0
.end method
