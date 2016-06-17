.class final Lacq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lacp;


# direct methods
.method constructor <init>(Lacp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lacq;->a:Lacp;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Lacl;->a()V

    .line 67
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 68
    iget-object v0, p0, Lacq;->a:Lacp;

    invoke-virtual {v0}, Lacp;->d()V

    .line 69
    invoke-static {}, Lact;->a()Lact;

    move-result-object v0

    iget-object v1, p0, Lacq;->a:Lacp;

    invoke-virtual {v0, v1}, Lact;->a(Lacp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    iget-object v0, p0, Lacq;->a:Lacp;

    iget-object v1, v0, Lacp;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_1
    iget-object v0, p0, Lacq;->a:Lacp;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lacp;->b:Z

    .line 73
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    iget-object v0, p0, Lacq;->a:Lacp;

    iget-object v1, v0, Lacp;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_3
    iget-object v0, p0, Lacq;->a:Lacp;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lacp;->b:Z

    .line 73
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    iget-object v1, p0, Lacq;->a:Lacp;

    iget-object v1, v1, Lacp;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_4
    iget-object v2, p0, Lacq;->a:Lacp;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lacp;->b:Z

    .line 73
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    throw v0

    .line 73
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
