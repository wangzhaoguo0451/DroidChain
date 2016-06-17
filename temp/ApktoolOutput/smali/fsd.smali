.class public final Lfsd;
.super Ljava/lang/Object;
.source "ZendeskHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfru;


# direct methods
.method public constructor <init>(Lfru;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lfsd;->a:Lfru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 570
    iget-object v0, p0, Lfsd;->a:Lfru;

    invoke-virtual {v0}, Lfru;->b()Ljava/util/List;

    .line 571
    iget-object v0, p0, Lfsd;->a:Lfru;

    iget-object v1, p0, Lfsd;->a:Lfru;

    iget v1, v1, Lfru;->a:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lfru;->b:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lfru;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfse;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lfsc;

    invoke-direct {v3, v2, v1}, Lfsc;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    return-void
.end method
