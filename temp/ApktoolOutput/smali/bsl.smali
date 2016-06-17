.class public final Lbsl;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field public final a:Lbsn;

.field final b:[Z

.field public c:Z

.field public final synthetic d:Lbsi;


# direct methods
.method private constructor <init>(Lbsi;Lbsn;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lbsl;->d:Lbsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lbsl;->a:Lbsn;

    .line 729
    iget-boolean v0, p2, Lbsn;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lbsl;->b:[Z

    .line 730
    return-void

    .line 729
    :cond_0
    invoke-static {}, Lbsi;->c()I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lbsi;Lbsn;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Lbsl;-><init>(Lbsi;Lbsn;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 769
    iget-object v2, p0, Lbsl;->d:Lbsi;

    monitor-enter v2

    .line 770
    :try_start_0
    iget-object v0, p0, Lbsl;->a:Lbsn;

    iget-object v0, v0, Lbsn;->d:Lbsl;

    if-eq v0, p0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 773
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbsl;->a:Lbsn;

    iget-boolean v0, v0, Lbsn;->c:Z

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lbsl;->b:[Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    .line 776
    :cond_1
    iget-object v0, p0, Lbsl;->a:Lbsn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbsn;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 779
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 790
    :goto_0
    :try_start_3
    new-instance v0, Lbsm;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lbsm;-><init>(Lbsl;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 782
    :catch_0
    move-exception v0

    iget-object v0, p0, Lbsl;->d:Lbsi;

    invoke-static {v0}, Lbsi;->f(Lbsi;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v0

    .line 788
    goto :goto_0

    .line 787
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lbsi;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lbsl;->d:Lbsi;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lbsi;->a(Lbsi;Lbsl;Z)V

    .line 825
    return-void
.end method
