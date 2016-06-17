.class final Ldyb;
.super Ljava/lang/Object;
.source "BaseFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyg;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ldya;


# direct methods
.method constructor <init>(Ldya;Ldyg;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Ldyb;->e:Ldya;

    const/4 v0, 0x0

    iput v0, p0, Ldyb;->b:I

    const v0, 0x7fffffff

    iput v0, p0, Ldyb;->c:I

    iput-object p2, p0, Ldyb;->a:Ldyg;

    iput-object p3, p0, Ldyb;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 67
    :try_start_0
    iget-object v2, p0, Ldyb;->e:Ldya;

    iget v3, p0, Ldyb;->c:I

    const/4 v1, 0x0

    invoke-virtual {v2}, Ldya;->a()Ldye;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_1

    add-int/lit8 v0, v3, 0x0

    if-gez v0, :cond_0

    invoke-virtual {v4}, Ldye;->a()I

    move-result v0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ldye;->b(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v2, v0, v1}, Ldya;->b(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_2
    iget-object v0, p0, Ldyb;->a:Ldyg;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Ldyb;->e:Ldya;

    iget-object v0, v0, Ldya;->a:Landroid/os/Handler;

    new-instance v1, Ldyc;

    invoke-direct {v1, p0, v5}, Ldyc;-><init>(Ldyb;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_3
    :goto_1
    iget-object v1, p0, Ldyb;->e:Ldya;

    monitor-enter v1

    .line 146
    :try_start_1
    iget-object v0, p0, Ldyb;->e:Ldya;

    iget-object v0, v0, Ldya;->b:Ljava/util/Set;

    iget-object v2, p0, Ldyb;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Ldyb;->e:Ldya;

    iget-object v0, v0, Ldya;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 134
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Ldyb;->a:Ldyg;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Ldyb;->e:Ldya;

    iget-object v0, v0, Ldya;->a:Landroid/os/Handler;

    new-instance v1, Ldyd;

    invoke-direct {v1}, Ldyd;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldyb;->e:Ldya;

    monitor-enter v1

    .line 146
    :try_start_3
    iget-object v2, p0, Ldyb;->e:Ldya;

    iget-object v2, v2, Ldya;->b:Ljava/util/Set;

    iget-object v3, p0, Ldyb;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Ldyb;->e:Ldya;

    iget-object v2, v2, Ldya;->c:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
