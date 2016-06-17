.class final Ldbf;
.super Landroid/os/FileObserver;
.source "ConcurrentDiskBasedCache.java"


# instance fields
.field private synthetic a:Ldbe;


# direct methods
.method constructor <init>(Ldbe;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Ldbf;->a:Ldbe;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 58
    iget-object v1, p0, Ldbf;->a:Ldbe;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Ldbf;->a:Ldbe;

    invoke-static {v0}, Ldbe;->a(Ldbe;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ldbf;->a:Ldbe;

    invoke-static {v2}, Ldbe;->b(Ldbe;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Ldbf;->a:Ldbe;

    invoke-static {v2, v0}, Ldbe;->a(Ldbe;Ljava/io/File;)V

    .line 66
    :cond_0
    monitor-exit v1

    .line 68
    :cond_1
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
