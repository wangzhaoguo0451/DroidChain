.class public Ldbe;
.super Lahd;
.source "ConcurrentDiskBasedCache.java"


# instance fields
.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Ldbe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lahd;-><init>(Ljava/io/File;I)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldbe;->c:Ljava/util/Set;

    .line 39
    new-instance v0, Ldbf;

    iget-object v1, p0, Ldbe;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldbf;-><init>(Ldbe;Ljava/lang/String;)V

    iput-object v0, p0, Ldbe;->d:Landroid/os/FileObserver;

    iget-object v0, p0, Ldbe;->d:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 40
    return-void
.end method

.method static synthetic a(Ldbe;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Ldbe;->c:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Ldbe;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ldbe;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 150
    .line 153
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    move-result-object v0

    .line 155
    :try_start_2
    invoke-static {v7}, Lahe;->a(Ljava/io/InputStream;)Lahe;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lahe;->a:J

    .line 157
    iget-object v2, v1, Lahe;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ldbe;->a(Ljava/lang/String;Lahe;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 163
    if-eqz v0, :cond_0

    .line 165
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 170
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 176
    :cond_1
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    if-eqz p1, :cond_2

    .line 160
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 163
    :cond_2
    if-eqz v0, :cond_3

    .line 165
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_6 .. :try_end_6} :catch_8

    .line 170
    :cond_3
    :goto_3
    if-eqz v1, :cond_1

    .line 172
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v1

    move-object v7, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_4

    .line 165
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_8 .. :try_end_8} :catch_b

    .line 170
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 172
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 173
    :cond_5
    :goto_6
    throw v0

    .line 168
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    .line 173
    :catch_5
    move-exception v0

    goto :goto_1

    .line 168
    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto :goto_5

    :catch_c
    move-exception v1

    goto :goto_6

    .line 163
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    .line 159
    :catch_d
    move-exception v1

    move-object v1, v7

    goto :goto_2
.end method

.method static synthetic b(Ldbe;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Ldbe;->b:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lagi;
    .locals 12
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldbe;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    if-nez v0, :cond_0

    move-object v0, v7

    .line 122
    :goto_0
    monitor-exit p0

    return-object v0

    .line 93
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ldbe;->d(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 97
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 99
    :try_start_3
    new-instance v2, Lahf;

    invoke-direct {v2, v9}, Lahf;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_12

    .line 100
    :try_start_4
    invoke-static {v2}, Lahe;->a(Ljava/io/InputStream;)Lahe;

    .line 101
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v3, v2, Lahf;->a:I

    int-to-long v10, v3

    sub-long/2addr v4, v10

    long-to-int v3, v4

    invoke-static {v2, v3}, Ldbe;->a(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 102
    invoke-virtual {v0, v3}, Lahe;->a([B)Lagi;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_13

    move-result-object v0

    .line 112
    if-eqz v1, :cond_1

    .line 114
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 119
    :cond_1
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Lahf;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    .line 104
    :goto_2
    :try_start_7
    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0, p1}, Ldbe;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 106
    if-eqz v1, :cond_2

    .line 114
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_8 .. :try_end_8} :catch_8

    .line 119
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 121
    :try_start_9
    invoke-virtual {v2}, Lahf;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_3
    :goto_4
    move-object v0, v7

    .line 122
    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    .line 108
    :goto_5
    :try_start_a
    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0, p1}, Ldbe;->b(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 110
    if-eqz v1, :cond_4

    .line 114
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_b .. :try_end_b} :catch_c

    .line 119
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 121
    :try_start_c
    invoke-virtual {v2}, Lahf;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    :cond_5
    :goto_7
    move-object v0, v7

    .line 122
    goto/16 :goto_0

    .line 112
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_8
    if-eqz v1, :cond_6

    .line 114
    :try_start_d
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_d .. :try_end_d} :catch_10

    .line 119
    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    .line 121
    :try_start_e
    invoke-virtual {v2}, Lahf;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_11

    .line 122
    :cond_7
    :goto_a
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6

    :catch_d
    move-exception v0

    goto :goto_7

    :catch_e
    move-exception v1

    goto :goto_9

    :catch_f
    move-exception v1

    goto :goto_9

    :catch_10
    move-exception v1

    goto :goto_9

    :catch_11
    move-exception v1

    goto :goto_a

    .line 112
    :catchall_2
    move-exception v0

    move-object v2, v7

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_8

    .line 107
    :catch_12
    move-exception v0

    move-object v2, v7

    goto :goto_5

    :catch_13
    move-exception v0

    goto :goto_5

    .line 103
    :catch_14
    move-exception v0

    move-object v2, v7

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2
.end method

.method public final declared-synchronized a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ldbe;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v0, p0, Ldbe;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ldbe;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lagx;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    :try_start_1
    iget-object v1, p0, Ldbe;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_0

    .line 144
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 145
    invoke-direct {p0, v3}, Ldbe;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lagi;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lagi;->a:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Ldbe;->a(I)V

    .line 184
    invoke-virtual {p0, p1}, Ldbe;->d(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 188
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    move-result-object v1

    .line 190
    :try_start_3
    new-instance v3, Lahe;

    invoke-direct {v3, p1, p2}, Lahe;-><init>(Ljava/lang/String;Lagi;)V

    .line 191
    invoke-virtual {v3, v0}, Lahe;->a(Ljava/io/OutputStream;)Z

    .line 192
    iget-object v4, p2, Lagi;->a:[B

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 193
    iget-object v4, p0, Ldbe;->c:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0, p1, v3}, Ldbe;->a(Ljava/lang/String;Lahe;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 197
    if-eqz v1, :cond_0

    .line 199
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 204
    :cond_0
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 214
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 197
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v1, :cond_2

    .line 199
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_6 .. :try_end_6} :catch_7

    .line 204
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 206
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 210
    :cond_3
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 211
    if-nez v0, :cond_1

    .line 212
    const-string v0, "Could not clean up file %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_4

    .line 199
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_9 .. :try_end_9} :catch_b

    .line 204
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 206
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 207
    :cond_5
    :goto_7
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 202
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    .line 207
    :catch_4
    move-exception v0

    goto :goto_1

    .line 202
    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_3

    .line 207
    :catch_8
    move-exception v0

    goto :goto_4

    .line 202
    :catch_9
    move-exception v2

    goto :goto_6

    :catch_a
    move-exception v2

    goto :goto_6

    :catch_b
    move-exception v2

    goto :goto_6

    :catch_c
    move-exception v1

    goto :goto_7

    .line 197
    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_d
    move-exception v3

    goto :goto_2
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lahd;->b(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Ldbe;->c:Ljava/util/Set;

    invoke-static {p1}, Ldbe;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
